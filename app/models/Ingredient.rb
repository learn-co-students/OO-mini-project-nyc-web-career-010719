class Ingredient

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  #all allergens who have an allergen with ingredient
  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def users
    allergens.map do |allergen|
      allergen.user
    end
  end

  #should return the ingredient instance that the highest number of users are allergic to
  def self.most_common_allergen
    @most_common = self.all[0]
    self.all.each do |ingredient|
      if ingredient.users.length > @most_common.users.length
        @most_common = ingredient
      else
        @most_common = @most_common
      end
    end
    @most_common
  end

end #end of ingredient class
