require_relative '../config/environment.rb'

#Users (name)
emily = User.new("Emily")
sivan = User.new("Sivan")
zev = User.new("Zev")

#recipies (name)
tacos = Recipe.new("these are my tacos")
pizza = Recipe.new("this is my pizza")
chicken_parm = Recipe.new("CHICKEN PARM")

#recipecards (date_of_entry, user, recipe)
taco_recipe1 = RecipeCard.new("1/1/2019", 5, sivan, tacos)
taco_recipe2 = RecipeCard.new("1/2/2019", 4, zev, tacos)
pizza_recipe1 = RecipeCard.new("1/3/2019", 12, emily, pizza)
pizza_recipe2 = RecipeCard.new("1/4/2019", 13, sivan, pizza)
pizza_recipe3 = RecipeCard.new("1/5/2019", 1, emily, pizza)
pizza_recipe4 = RecipeCard.new("1/6/2019", 15, emily, pizza)
chicken_parm1 = RecipeCard.new("1/7/2019", 50, sivan, chicken_parm)
chicken_parm2 = RecipeCard.new("1/8/2019", 80, sivan, chicken_parm)
chicken_parm3 = RecipeCard.new("1/9/2019", 50, zev, chicken_parm)

#ingredients
sauce = Ingredient.new("sauce")
cheese = Ingredient.new("cheese")
mush = Ingredient.new("mush")
veggies = Ingredient.new("veggies")


#RecipeIngredient
ri1 = RecipeIngredient.new("my sauce", sauce, chicken_parm)
ri2 = RecipeIngredient.new("my cheese", cheese, chicken_parm)
ri3 = RecipeIngredient.new("veggies", veggies, tacos)

#allergens
a1 = Allergen.new(sivan, sauce)
a2 = Allergen.new(emily, mush)
a3 = Allergen.new(emily, sauce)
a4 = Allergen.new(zev, veggies)

binding.pry

"yooooo"
