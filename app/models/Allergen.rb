
class Allergen
  attr_reader :user,:ingredient
  attr_accessor :allergy

  @@all = []

  def initialize(user,ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

end # end of class
