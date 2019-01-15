class Ingredient
  attr_reader :name

  @@all = []

  ############## CLASS METHODS ##############
  def self.all
    @@all
  end

  def self.most_common_allergen
    user_hash = {}

    self.all.each do |ingredient|
      user_hash[ingredient] = ingredient.users.count
    end

    most_users = user_hash.sort_by{|key, value| value}.reverse[0][0]

    most_users
  end

  ############## INSTANCE METHODS ##############
  def initialize(name)
    @name = name

    @@all << self
  end

  def allergens
    Allergen.all.select{|allergen| allergen.ingredient == self}
  end

  def users
    self.allergens.map{|allergen| allergen.user}
  end

end #end of Ingredient class
