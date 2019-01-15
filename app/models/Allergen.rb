class Allergen

  attr_reader :user, :ingredient

  @@all = []

  def self.all
    @@all
  end

  def initialize(ingredient, user)
    @ingredient = ingredient
    @user = user
    @@all << self
  end
end #end of class
