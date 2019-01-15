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

  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end
  end
  def users
    recipe_cards.map do |rc|
      rc.user
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
  end

  def ingredients
    recipe_ingredients.map do |ri|
      ri.ingredient
      # binding.pry

    end
  end

  def allergens
    allergen_list = []
    ingredients.each do |ingredient|
      # binding.pry
      ingredient.allergens.each do |i|
        allergen_list << i
        # binding.pry
      end
    end
    allergen_list
  end

  def add_ingredients(ingredArr)
    ingredArr.map do |ingredients|
      RecipeIngredient.new(ingredients,self)
    end
  end
end
