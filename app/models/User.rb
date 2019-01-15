

class User
  attr_reader :name
  @@all =[]

  def initialize(name)
    @name = name
    # @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    recipe_cards.map do |rc|
      rc.recipe
    end
  end
  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.user == self
    end

  end
  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def allergens
    Allergen.all.select do  |a|
      a.user == self
    end
  end

  def add_recipe_card(recipe,date,rating)
    RecipeCard.new(self,recipe,date,rating)
  end

  def recipe_sorter
    recipe_cards.sort_by do |rc|
       - rc.rating
       # binding.pry
     end
     # binding.p
  end

  def top_three_recipes
    recipe_sorter[0..2]
  end
  def most_recent
    recipes[-1]
  end
  def safe_recipes
    safeRec =[]
    recipes.each do |r|
      allergens.each do |a|
        if r.ingredients.include?(a.ingredient)== false
          safeRec << r
        end
      end
    end
    safeRec
  end

end #end of class
