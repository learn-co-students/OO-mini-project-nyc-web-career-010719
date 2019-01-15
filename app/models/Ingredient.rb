class Ingredient

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  #this returns all the ingredients that are allergens.
  def self.alli
    allergy_arr = Allergen.all.map do |all|
      all.ingredient
    end
    allergy_arr.uniq
  end

  #all of the allergens
  def allergens
    Allergen.all.select do |a|
      a.ingredient == self
    end
  end

  #all of the users that have an allergen
  def users
    self.allergens.map do |a|
      a.user
    end
  end

  def self.most_common_allergen
    allergen_freq_a = @@all.sort_by { |ing| ing.users.count }
    allergen_freq_a[-1]
  end

  ####BONUS HELPER METHOD

  def recipe_ingredients
    RecipeIngredient.all.select do |ri|
      ri.ingredient == self
    end
  end

  def all_recipes
    self.recipe_ingredients.map do |ri|
      ri.recipe
    end
  end
end # end of class
