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
      RecipeCard.all.select do |rc|
        rc.user == self
      end
    end

    # - `User#recipes`
    # should return the user instances who have recipe cards with this recipe
    def recipes
      recipe_cards.map do |r|
        r.recipe
      end
    end

    def allergens
      Allergen.all.select do |allergen|
        allergen.user == self
      end
    end

    def ingredients
      allergens.map do |allergen|
        allergen.ingredient
      end
    end

    def add_recipe_card(date, rating, recipe)
      RecipeCard.new(date, rating, self, recipe)
    end

    #should return the top three highest rated recipes for this user.
    #For me(user), i want my recipes
    #then, i want to select the ones with the top rating (3 of them)
    def top_three_recipes
      recipe_ratings = recipe_cards.each do |r|
        r.rating
      end
      sorted_recipe_ratings = recipe_ratings.sort_by {|r| r.rating}
      top_three= sorted_recipe_ratings.reverse[0..2]
      top_three
    end

    #should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
    #we are a user
    #we want to create a new allergen for us and the ingredient we passed in
    def declare_allergen(ingredient)
      Allergen.new(self, ingredient)
    end

    #should return the recipe most recently added to the user's cookbook.
    #we are a user
    #we want to find the last recipe we added to our recipecard
    def most_recent_recipe
      my_recipes=recipe_cards.each do |recipe|
        recipe.user
      end
      my_recipes_sorted = my_recipes.sort_by { |recipe| recipe.date_of_entry}
      my_most_recent = my_recipes_sorted[-1]
    end

    def allergy_ingredients
      allergens.map do |a|
        a.ingredient
      end
    end

    #should return all recipes that do not contain ingredients the user is allergic to What other methods might be useful to have?
    #I am a user and I have allergies
    #I want to get a list of recipes that do not contain ingredients I am allergic to
    def safe_recipes
     recipes.select do |r|
       r.ingredients.none? do |ingredient|
         allergy_ingredients.include?(ingredient)

       end
     end

    end

end #end of user class
