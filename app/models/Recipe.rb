class Recipe

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select{|rc| rc.recipe == self}
  end

  def self.most_popular
    @@all.max_by do |recipe|
      recipe.recipe_cards.length
    end
  end

  def users
    recipe_cards.map{|rc| rc.user}
  end

  def recipe_ingredients
    RecipeIngredient.all.select{|ri| ri.recipe == self}
  end

  def ingredients
    recipe_ingredients.map{|ri| ri.ingredient}
  end

  def allergens
    ingredients.select{|i| i.is_allergen?}
  end

  def add_ingredients(array)
    array.each do |ii|
      RecipeIngredient.new(ii, self)
    end
  end





end
