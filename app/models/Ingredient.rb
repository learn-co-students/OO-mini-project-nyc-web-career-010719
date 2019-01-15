
class Ingredient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergen.all.select{|ai| ai.ingredient == self}
  end

  def is_allergen?
    if allergens.length > 0
      return true
    else
      return false
    end
  end

  def self.most_common_allergen
    @@all.max_by do |ingredient|
      ingredient.allergens.length
    end
  end


end
