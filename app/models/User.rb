class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def recipes
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def add_recipe_card(recipe, rating, date=Time.now)
    RecipeCard.new(self, recipe, rating, date)
  end

  def top_three_recipes
    rec = recipes.map {|recipe_card| recipe_card}
    rec.sort_by! {|recipe| recipe.rating}
    rec.reverse!.first(3)
  end

  def most_recent_recipe
    RecipeCard.all.last.recipe
  end


  # def all_allergens
  #   allergen_arr = []
  #   self.allergens.each {|allergen|
  #     allergen_arr << allergen.ingredient}
  #   allergen_arr
  # end
  #
  # def safe_recipes
  #   safe_arr = []
  #   self.recipes.each {|recipe|
  #     self.allergens.each {|allergen|
  #       if self.all_ingredients.include?(allergen.ingredient)
  #         safe_arr << recipe
  #       # binding.pry
  #       end
  #     }
  #   }
  #   safe_arr
  #   all_ingredients.delete_if {|x|
  #     binding.pry
  #     x.ingredient }
  #   binding.pry
  #   both = self.all_allergens & self.all_ingredients
  # end

  ######################################################
  # 1. gather all of this user's recipes
  # 2. gather all of user's all_allergens
  # 3. find common ingredients in allergens and recipes
  # 4. reject recipes that have those ingredients
  # 5. return those recipes in an array
  #######################################################
  # Relevant methods
  # - #recipes (class User)
  # - #allergens (class User)
  # - #ingredient (class Allergen)
  # - #ingredients (class Recipe)
  # - #select (class Array, Hash)
  # - #each " "
  # - #map " "
  # - include? " "
  #########################################################
  # 1. call #recipes on self, assign to var
  # 2. call #allergens on self, assign to var
  # 3.  decalre empty array
  # 4. use include to find common ingredients
  #    a. nested each loops to check every recipe and allergen
  #        array1.include?(ingredient)
  #        if !recipe_card.recipe.ingredients.include?(allergen.ingredient)
  #           shovel into array
  def safe_recipes
    arr = []
    recipes.each do |recipe_card|
      recipe = recipe_card.recipe
      allergens.each do |allergen|
        # binding.pry
        recipeingredients = recipe.ingredients
        recipes_ingredients = recipeingredients.map { |ri| ri.ingredient }
        allergen_ingredient = allergen.ingredient
        # binding.pry
        if recipes_ingredients.include?(allergen_ingredient)
          break
        else
          arr << recipe
        end
      end
    end
    arr.uniq
  end

end
