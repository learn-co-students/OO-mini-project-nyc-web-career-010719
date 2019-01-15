class RecipeIngredient
  attr_reader :name, :ingredient, :recipe

  @@all = []

  ############## CLASS METHODS ##############
  def self.all
    @@all
  end

  ############## INSTANCE METHODS ##############
  def initialize(name, ingredient, recipe)
    @name = name
    @ingredient = ingredient
    @recipe = recipe

    @@all << self
  end


end #end of RecipeIngredient class
