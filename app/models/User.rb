class User
  attr_reader :user_name

  @@all = []

  ############## CLASS METHODS ##############
  def self.all
    @@all
  end

  ############## INSTANCE METHODS ##############
  def initialize(user_name)
    @user_name = user_name

    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select{|card| card.user == self}
  end

  def recipes
    self.recipe_cards.map{|card| card.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe.recipe_name, date, self, recipe, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient.name, self, ingredient)
  end

  def allergens
    # Allergen.all.select{|allergen| allergen.user == self}
    allergen_array = Allergen.all.select{|ingredient| ingredient.user == self} #gives us array of allergen instances

    allergen_array.each.map{|allergen| allergen.ingredient} #this should give us array of ingredient
  end

  def top_three_recipes
    recipe_hash = {} #create empty hash to store recipe and its rating

    self.recipe_cards.each do |card|
      recipe_hash[card.recipe] = card.rating
    end #iterate through recipe_cards to create recipe_hash

    top_array = [] #create empty array to store top three recipes

    recipe_hash.sort_by{|key, value| value}.reverse[0..2].each do |recipe_array| #sorting by reverse value
      top_array << recipe_array[0] #shovel in the recipe instance to array in reverse order
    end

    top_array #returns the top 3
  end

  def most_recent_recipe
    recipe_card = self.recipe_cards.max_by do |card|
      card.date
    end
    recipe_card.recipe
  end


  def safe_recipes
    recipe_array = []

    Recipe.all.each do |recipe|
      if recipe.allergens & self.allergens == []
        recipe_array << recipe
      end
    end

    recipe_array
  end


end #end of User class
