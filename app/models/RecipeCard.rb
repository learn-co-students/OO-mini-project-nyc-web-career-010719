require 'date'
class RecipeCard

  attr_reader :name, :user, :recipe, :date
  attr_accessor :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, user, recipe, date="#{Date.today}", rating)
    @name = name
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating



    @@all << self
  end



end
