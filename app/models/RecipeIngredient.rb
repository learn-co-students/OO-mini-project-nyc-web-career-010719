class RecipeIngredient #join class

  attr_accessor :name, :ingredient, :recipe

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, ingredient, recipe)
    @name = name
    @ingredient = ingredient
    @recipe = recipe

    @@all << self
  end

end #end of class
