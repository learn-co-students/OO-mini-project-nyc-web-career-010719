class Recipe

  attr_reader :name

  @@all = []

  # - `Recipe.all`
  # should return all of the recipe instances
  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end
  end

  # - `Recipe#users`
  # should return the user instances who have recipe cards with this recipe
  def users
    recipe_cards.map do |r|
      r.user
    end
  end

  #asking for an RI instance that belongs to our recipe
  def recipe_ingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
  end

  # - `Recipe#ingredients`
  # should return all of the ingredients in this recipe
  def ingredients
    recipe_ingredients.map do |r|
      r.ingredient
    end
  end

  # - `Recipe.most_popular`
  # should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  def self.most_popular
    @most_popular = self.all[0]
    binding.pry
    self.all.each do |recipe|
      if recipe.users.length > @most_popular.users.length
        @most_popular = recipe
      else
        @most_popular = @most_popular
      end
    end
    @most_popular
  end

  # - `Recipe#allergens`
  # should return all of the ingredients in this recipe that are allergens
  #I am a recipe, give me my ingredients and check to see if they are allergens
  def allergens
    ingredients_array=[]
    ingredients.each do |ingredient|
      # binding.pry
      if ingredient.allergens
        # binding.pry
        ingredients_array << ingredient.allergens
      end
    end
    arr= ingredients_array.flatten.map do |allergen|
      allergen.ingredient
    end
    arr.uniq
  end

  # - `Recipe#add_ingredients`
  # should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
  def add_ingredients(ingredients_array)
    # ingredients_array[0] = RecipeIngredient.new(name, ingredients_array[0], self)
    ingredients_array.each do |ingredient|
      RecipeIngredient.new(ingredient.name, ingredient, self)
    end
  end
end #end of my class
