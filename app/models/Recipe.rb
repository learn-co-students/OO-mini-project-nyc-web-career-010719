class Recipe
  attr_reader :recipe_name

  @@all = []

  ############## CLASS METHODS ##############
  def self.all
    @@all
  end

  def self.most_popular
    self.all.max_by do |recipe|
      recipe.users.count
    end
  end


  ############## INSTANCE METHODS ##############
  def initialize(recipe_name)
    @recipe_name = recipe_name

    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select{|card| card.recipe == self}
  end

  def users
    self.recipe_cards.map{|card| card.user}
  end

  def recipe_ingredients
    RecipeIngredient.all.select{|ri| ri.recipe == self}
  end #pulling every recipe_ingredient that belongs to recipe

  def ingredients
    self.recipe_ingredients.map{|ri| ri.ingredient}
  end #pulling every ingredient associated with recipe ingredient

  def allergens
    #should return all of the ingredients in this recipe that are allergens
    ingredient_array = []

    self.ingredients.each do |ingredient|
      Allergen.all.each do |allergen|
        if allergen.ingredient == ingredient
          ingredient_array << ingredient
        end
      end
    end

    ingredient_array.uniq
  end


  def add_ingredients(ingredient_array)
    ingredient_array.each do |ingredient|
      RecipeIngredient.new(ingredient.name, ingredient, self)
    end
  end


end #end of Recipe class
