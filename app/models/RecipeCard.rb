class RecipeCard

  attr_accessor :user, :recipe, :rating
  attr_reader :date

  @@all = []

  def initialize(user, recipe, rating, date=Time.now)
    @date = date
    @date = @date.strftime "%F"
    @user = user
    @recipe = recipe
    @rating = rating

    @@all << self
  end

  def self.all
    @@all
  end

end
