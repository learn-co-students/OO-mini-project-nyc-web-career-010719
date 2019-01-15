class User

  attr_reader :name

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
      rc.user == self
    end
  end

  def recipes
    recipe_cards.map do |rc|
      rc.recipe
    end
  end

# (user, date, rating, recipe)
  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, date,rating,recipe)
  end

  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def allergens
    Allergen.all.select do |a|
      a.user == self
    end
  end

  def top_three_recipes
    sorted = recipe_cards.sort_by do |rc|
      rc.rating
    end
    sorted.reverse!
    sorted[0..2].map do |rc|
      rc.recipe
    end
  end

  def most_recent_recipe
    sorted = recipe_cards.sort_by do |rc|
      rc.date
    end

    sorted[sorted.length-1].recipe
  end

  def allergy_ingredients
    allergens.map do |a|
      a.ingredient
    end
  end

  def safe_recipes
    # take all recipes for the person
    # pull out all of his allergens into array
    # pull out all the ingredients in his recipes
 # allergen.ingredient == recipe.ingredients




   recipes.select do |r|
     r.ingredients.none? do |i|
       # binding.pry
       allergy_ingredients.include?(i)

     end
   end


     # #
     # allergy_ingredients.each do |ai|
     #   r.ingredients.each do |i|
     #    i == ai
     #  end
     # end
   # end
  end


end
