class RecipeIngredient

  attr_reader :recipe, :ingredient

  @@all = []

  def self.all
    @@all
  end

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end
end #end of class
