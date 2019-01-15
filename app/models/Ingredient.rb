
class Ingredient

  attr_accessor :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  def allergens
    Allergen.all.select do |a|
      a.ingredient == self
    end
  end
  def self.most_common_allergen

    all_allergies= Allergen.all.map do |a|
        a.ingredient
        # binding.pry
    end

    # all_allergies.each do |allerg,freq|
    allergy_hash = all_allergies.inject(Hash.new(0)){|ah,i| ah[i]+=1; ah }
    sorted_hash = allergy_hash.sort_by do |i,v|
      -v
    end
    sorted_hash[0]
    # allergy_hash.max_by {|v| all_alergies[v]}
    # binding.pry
    # all_allergies.sort_by {|a| - a.size}[0]
  end

end
