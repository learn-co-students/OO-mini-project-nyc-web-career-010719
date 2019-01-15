class Ingredient

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
# Ingredient to User

  def allergens
    Allergen.all.select do |ag|
      ag.ingredient == self
    end
  end

  def users
    self.allergens.map do |ag|
      ag.user
    end
  end

  def self.most_common_allergen
    array = all.map.sort_by do |ig|
      ig.allergens.length
    end
    array[-1]
  end

# End of Ingredient to User
################################################################


################################################################
# Start of Ingredient to Recipe

def recipe_ingredients
  RecipeIngredient.all.select do |ri|
    ri.ingredient == self
  end
end

def recipes
  self.recipe_ingredients.map do |ri|
    ri.recipe
  end
end






# End of Ingredient to Recipe
################################################################



end
