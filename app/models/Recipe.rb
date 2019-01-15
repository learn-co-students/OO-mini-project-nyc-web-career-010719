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

################################################################
# Recipe to User

  def recipecards
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end
  end

  def users
    self.recipecards.map do |rc|
      rc.user
    end
  end

  def self.most_popular
    array = all.sort_by do |recipe|
      recipe.users.length
    end
    array.last  #if you wanted the first one since sort by is giving least to greatest then you would call .first
  end
#End of Recipe to User
################################################################

################################################################
# Start of Recipe to Ingredient

  def recipe_ingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
  end

  def ingredients
    self.recipe_ingredients.map do |ri|
      ri.ingredient
    end
  end

  def add_ingredients(ingredient_list)
    ingredient_list.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end


  def allergens
    allergen_arr = []
    self.ingredients.map do |ingredient|
      if ingredient.allergens
        allergen_arr << ingredient.allergens
      end
    end
    allergen_arr
  end

  def self.all_ingredients
    Recipe.all.map do |r|
      r.ingredients
    end
  end




# End of Recipe to Ingredient
################################################################



end
