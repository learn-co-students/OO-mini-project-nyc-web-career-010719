class User

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select do |cards|
      cards.user == self
    end
  end

  def recipes
    self.recipe_cards.map do |rec|
      rec.recipe
    end
  end

  def add_recipe_card(date, recipe, rating = 0)
    RecipeCard.new(date, self, recipe, rating)
  end

  def top_three_recipes
    top_rating = self.recipe_cards.sort_by do |rec|
      rec.rating
    end
   top_recipes = top_rating.map do |tr|
     tr.recipe
   end
    top_recipes[-3..-1]
  end

  def most_recent_recipe
    rec_dates = recipe_cards.sort_by do |rec|
      rec.date
    end
    rec_dates[-1]
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    Allergen.all.select do |ali|
      ali.user == self
    end
  end

  ### BONUS ###

  # def not_allergens
  #   # not_allergens = allergens.select do |a|
  #   #   a.exlude?(a)
  #
  #   #all the ingredients that are my allergens
  #   evil_ingredients = self.allergens.map do |ali|
  #     ali.ingredient
  #   end
  #   Ingredient.all.select do |ing|
  #     !evil_ingredients.include?(ing)
  #   end
  # end
  #
  # def safe_recipes
  #   potentially_ok = self.not_allergens.map do |ing|
  #     ing.all_recipes
  #   end
  #

  end
end # end of class
