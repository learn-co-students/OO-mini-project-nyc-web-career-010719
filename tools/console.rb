require 'pry'
require_relative '../config/environment.rb'

############# test data #############

######### USERS ##########
bob = User.new("Bob")
steve = User.new("Steve")
dave = User.new("Dave")

######### RECIPES ##########
lasagna = Recipe.new("Lasagna")
burrito = Recipe.new("Burrito")
taco = Recipe.new("Taco")
spaghetti = Recipe.new("Spaghetti")

######### RECIPE CARDS ##########
r1 = RecipeCard.new("Lasagna 1", "2019/01/03", bob, lasagna, 4)
r2 = RecipeCard.new("Burrito", "2018/12/14", bob, burrito, 5)
r3 = RecipeCard.new("blah", "2019/01/04", bob, spaghetti, 4)
r4 = RecipeCard.new("blah", "2018/07/15", steve, burrito, 1)
# date format = "yyyy/mm/dd"

######### INGREDIENTS ##########
cheese = Ingredient.new("Cheese")
tomato = Ingredient.new("Tomato")
pasta = Ingredient.new("Pasta")
potato = Ingredient.new("Potato")
beans = Ingredient.new("Beans")

######### RECIPE INGREDIENTS ##########
ri1 = RecipeIngredient.new("Tomato", tomato, lasagna)
ri2 = RecipeIngredient.new("Pasta", pasta, lasagna)
ri3 = RecipeIngredient.new("Cheese", cheese, lasagna)
ri4 = RecipeIngredient.new("Beans", beans, taco)
ri5 = RecipeIngredient.new("Beans", beans, burrito)
ri6 = RecipeIngredient.new("Tomato", tomato, spaghetti)

array_1 = [potato, beans]

steve.declare_allergen(tomato)
bob.declare_allergen(beans)
dave.declare_allergen(cheese)

binding.pry
puts "bye!"
