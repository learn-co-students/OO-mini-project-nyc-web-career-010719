class RecipeCard #this join class
    attr_reader :date_of_entry
    attr_accessor :rating, :user, :recipe

    @@all = []

    def self.all
      @@all
    end

    def initialize(date_of_entry, rating, user, recipe)
      @date_of_entry = date_of_entry
      @rating = rating
      @user = user
      @recipe = recipe

      @@all << self
    end

end #End of recipe card class
