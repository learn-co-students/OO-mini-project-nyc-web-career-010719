class Allergen

  attr_reader :name, :user, :ingredient

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, user, ingredient)
    @name = name
    @user = user
    @ingredient = ingredient
    @@all << self
  end



end
