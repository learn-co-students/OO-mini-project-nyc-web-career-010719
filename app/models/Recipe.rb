class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
  end

  def add_ingredients(ingredient_instances)
    ingredient_instances.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

  # returns and array of recipe cards
  def users
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end
  end

  def allergens
    self.users.map do |recipe_card|
      recipe_card.user.allergens
    end
  end

  def self.most_popular
    most = self.all.map {|recipe| recipe.users}
    most.flatten!
    most.map! {|user| user.recipe}
    freq = most.inject(Hash.new(0)) {|recipe, count| recipe[count] += 1; recipe}
    most.max_by {|recipe| freq[recipe]}
  end

end
