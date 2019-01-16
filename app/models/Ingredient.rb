class Ingredient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  # All ingredients that are allergens
  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def is_allergen? #returns a boolean

  end

  def self.most_common_allergen
    most = self.all.map {|ingredient| ingredient.allergens}
    most.flatten!
    most.map! {|allergen| allergen.ingredient}
    freq = most.inject(Hash.new(0)) {|ingredient, count| ingredient[count] += 1; ingredient}
    most.max_by {|ingredient| freq[ingredient]}
  end

end
