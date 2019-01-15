class Allergen
  attr_reader :name, :user, :ingredient 

  @@all = []

  ############## CLASS METHODS ##############
  def self.all
    @@all
  end

  ############## INSTANCE METHODS ##############
  def initialize(name, user, ingredient)
    @name = name
    @user = user
    @ingredient = ingredient

    @@all << self
  end

end #end of Allergen class
