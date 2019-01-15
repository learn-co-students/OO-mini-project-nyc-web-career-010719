require_relative '../config/environment.rb'

u1 = User.new("Cynthia")
u2 = User.new("Sarah")
u3 = User.new("Clarence")
u4 = User.new("Emily")

r1 = Recipe.new("Jumbalaya")
r2 = Recipe.new("Baklava")
r3 = Recipe.new("Rhugalah")
r4 = Recipe.new("PB & J")
r5 = Recipe.new("Quesadilla")

i1 = Ingredient.new("Sugar")
i2 = Ingredient.new("Spice")
i3 = Ingredient.new("Everything nice")

a1 = Allergen.new(u1,i3)
a2 = Allergen.new(u2,i3)
a3 = Allergen.new(u1,i1)
a4 = Allergen.new(u3,i3)

rc1 = RecipeCard.new("2019-01-19",r1,u1, 5)
rc2 = RecipeCard.new("2018-01-19", r4, u2, 4)
rc3 = RecipeCard.new("2019-03-17", r3, u2, 3)
rc4 = RecipeCard.new("2018-12-31", r2, u3, 4)
rc5 = RecipeCard.new("2006-04-01", r5, u4, 3)
rc6 = RecipeCard.new("2009-01-01", r4, u3, 2)
rc7 = RecipeCard.new("2006-04-01", r5, u2, 4)
rc8 = RecipeCard.new("2009-01-01", r1, u2, 1)

ri1 = RecipeIngredient.new(r5,i2)
ri2 = RecipeIngredient.new(r4,i1)
ri3 = RecipeIngredient.new(r2,i1)
ri4 = RecipeIngredient.new(r1,i3)
ri5 = RecipeIngredient.new(r3,i1)
ri6 = RecipeIngredient.new(r3,i2)
ri7 = RecipeIngredient.new(r3,i3)



binding.pry
