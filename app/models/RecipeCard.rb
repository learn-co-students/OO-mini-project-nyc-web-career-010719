class RecipeCard

  attr_reader :card_name, :date, :user, :recipe
  attr_accessor :rating

  @@all = []

  ############## CLASS METHODS ##############
  def self.all
    @@all
  end

  ############## INSTANCE METHODS ##############
  def initialize(card_name, date, user, recipe, rating)
    @card_name = card_name
    @date = date
    @user = user
    @recipe = recipe
    @rating = rating

    @@all << self
  end


end #end of RecipeCard class
