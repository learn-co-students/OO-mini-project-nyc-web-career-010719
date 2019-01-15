class RecipeCard

  attr_reader :user, :date, :recipe
  attr_accessor :rating

  @@all = []

  def initialize(user, date, rating, recipe)
    @date = date
    @user = user
    @rating = rating
    @recipe = recipe

    @@all << self
  end

  def self.all
    @@all
  end

  






end
