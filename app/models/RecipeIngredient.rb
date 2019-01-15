require 'date'
class RecipeIngredient

  attr_reader :name, :ingredient, :recipe


  @@all = []

  def self.all
    @@all
  end

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe

    @@all << self
  end



end
