require_relative '../config/environment.rb'

require 'date'






# USERS
u1 = User.new("Robby")
u2 = User.new("Chris")
u3 = User.new("Jill")

# RECIPES
r1 = Recipe.new("coffee")
r2 = Recipe.new("bbq")
r3 = Recipe.new("bread")
r4 = Recipe.new("cake")

# RECIPE CARDS
rc1 = RecipeCard.new("card1", u1, r1, "2000-04-24", 4)
rc2 = RecipeCard.new("card2", u2, r2, "#{Date.today}", 5)
rc3 = RecipeCard.new("card3", u1, r2, "#{Date.today}", 3)
rc4 = RecipeCard.new("card4", u1, r3, "2017-02-20", 9)
rc5 = RecipeCard.new("card5", u1, r4, "2018-09-02", 7)
rc6 = RecipeCard.new("card6", u3, r3, "#{Date.today}", 5)

# INGREDIENTS
i1 = Ingredient.new("beans")
i2 = Ingredient.new("beef")
i3 = Ingredient.new("flour")
i4 = Ingredient.new("milk")
i5 = Ingredient.new("nuts")
i6 = Ingredient.new("eggs")
i7 = Ingredient.new("sugar")
i8 = Ingredient.new("vanilla")
i9 = Ingredient.new("cream")

# Allergens
a1 = Allergen.new("lactose", u1, i4)
a2 = Allergen.new("nutty", u2, i5)
a3 = Allergen.new("super nutty", u3, i5)
a4 = Allergen.new("super duper nutty", u1, i5)
a5 = Allergen.new("gluten", u2, i3)


#Recipe ingredients
ri1 = RecipeIngredient.new(i4, r4)
ri2 = RecipeIngredient.new(i3, r4)
ri3 = RecipeIngredient.new(i3, r3)
ri4 = RecipeIngredient.new(i6, r4)
ri5 = RecipeIngredient.new(i2, r2)
ri6 = RecipeIngredient.new(i1, r1)

# r1 = Recipe.new("coffee")
# r2 = Recipe.new("bbq")
# r3 = Recipe.new("bread")
# r4 = Recipe.new("cake")
ingredient_list = [i7,i8,i9]




binding.pry

puts "bye bye"
