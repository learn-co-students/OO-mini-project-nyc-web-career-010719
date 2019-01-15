require 'date'

class RecipeCard

  attr_reader :date, :user, :recipe
  attr_accessor :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(date, user, recipe, rating = 0)
    @date = date
    @user = user
    @recipe = recipe
    @rating = rating
    @@all << self
  end
end # end of class
