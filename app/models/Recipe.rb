require 'pry'

class Recipe

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  #helper methods
  def recipe_cards
    RecipeCard.all.select do |cards|
      cards.recipe == self
    end
  end

  #access users
  def users
    self.recipe_cards.map do |u|
      u.user
    end
  end

  def user_count
    self.users.size
  end

  def self.most_popular
    recipe_popularity = @@all.sort_by do |recipe|
      recipe.user_count
    end
    recipe_popularity[recipe_popularity.length-1]
  end

  #helper method
  def recipe_ingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
  end

  def ingredients
    self.recipe_ingredients.map do |recipes|
      recipes.ingredient
    end
  end

  def allergens
    final_arr = []
    new_arr = Ingredient.alli #THIS SHOULD BE ALL INGREDIENTS THAT ARE ALLERGENS
    new_arr.each do |allergen|
      if self.ingredients.include?(allergen) #IF MY METHOD INGREDIENTS
        final_arr << allergen
      end
    end
    final_arr
  end

  def add_ingredients(ing)
    ing.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end
end # end of class
