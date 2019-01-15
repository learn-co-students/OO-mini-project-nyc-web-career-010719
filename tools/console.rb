require_relative '../config/environment.rb'

# ingredients
cheese = Ingredient.new("Cheese")
sauce = Ingredient.new("Sauce")
dough = Ingredient.new("Dough")
pepperoni = Ingredient.new("Pepperoni")
peppers = Ingredient.new("Peppers")
mushrooms = Ingredient.new("Mushrooms")
steak = Ingredient.new("Steak")



# some veggies
veggie_array = [peppers, mushrooms]



# recipes
pizza = Recipe.new("Pizza")
lasagna = Recipe.new("Lasagna")
calzone = Recipe.new("Calzone")
t_bone = Recipe.new("T-bone steak")
salad = Recipe.new("Salad")



# users
rachel_ray = User.new("Rachel Ray")
guy_fieri = User.new("Guy Fieri")
emril_lagasse = User.new("Emril Lagasse")

#   def initialize(user, date, rating, recipe)


# recipe cards
rc1 = RecipeCard.new(guy_fieri, "2010-01-01", 5, pizza)
rc2 = RecipeCard.new(guy_fieri, "2012-01-01", 4, t_bone)
rc3 = RecipeCard.new(rachel_ray, "2012-01-01", 5, calzone)
rc4 = RecipeCard.new(guy_fieri, "2015-01-02", 1, salad)
rc5 = RecipeCard.new(guy_fieri, "2015-01-01", 3, lasagna)


# recipe ingredients
ri1 = RecipeIngredient.new(cheese, pizza)
ri2 = RecipeIngredient.new(sauce, pizza)
ri3 = RecipeIngredient.new(dough, pizza)
ri4 = RecipeIngredient.new(pepperoni, pizza)
ri5 = RecipeIngredient.new(peppers, salad)
ri6 = RecipeIngredient.new(mushrooms, salad)
ri7 = RecipeIngredient.new(steak, t_bone)
ri8 = RecipeIngredient.new(sauce, lasagna)
ri9 = RecipeIngredient.new(cheese, lasagna)
ri10 = RecipeIngredient.new(pepperoni, salad)
ri11 = RecipeIngredient.new(mushrooms, pizza)



# allergens
a1 = Allergen.new(emril_lagasse, cheese)
a2 = Allergen.new(rachel_ray, dough)
a3 = Allergen.new(guy_fieri, dough)
a4 = Allergen.new(guy_fieri, cheese)
















binding.pry

puts "Mama Mia!"
