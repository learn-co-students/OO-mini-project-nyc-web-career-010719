class User

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name


    @@all << self
  end
################################################################
# User to Recipe
  def recipecards
    RecipeCard.all.select do |rc|
      rc.user == self
    end
  end

  def recipes
    self.recipecards.map do |rc|
      rc.recipe
    end
  end

  def add_recipe_card(recipe_name, recipe, rating)
    RecipeCard.new(recipe_name, self, recipe, rating)
  end

  def top_three_recipes
    array = self.recipecards.sort_by do |rc|
      rc.rating
    end
    array2 = array.map do |rc|
      rc.recipe
    end
    array2.last(3).reverse!
  end

  def most_recent_recipe
  array = self.recipecards.sort_by do |rc|
      rc.date
    end
    array.last.recipe
  end

# End of User to Recipe
################################################################
# User to Ingredient
  def allergens
    Allergen.all.select do |ag| #ag=allergen(singular)
      ag.user == self
    end
  end

  def ingredients
    self.allergens.map do |ag|
      ag.ingredient
    end
  end

  def declare_allergen(allergen_name, ingredient)
    Allergen.new(allergen_name, self, ingredient)
  end



# End of User to Ingredient
################################################################



# BONUS
################################################################
  def safe_recipes
    recipes.reject do |recipe|
      recipe.ingredients.any? { |ingredient| allergens.include?(ingredient)}
    end
  end


end # end of class
