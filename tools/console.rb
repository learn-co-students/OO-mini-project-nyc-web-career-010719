require_relative '../config/environment.rb'
require 'date'

  r1 = Recipe.new("Chicken Parm")
  r2 = Recipe.new("Pastaaaa")
  r3 = Recipe.new("Tacos")
  r4 = Recipe.new("Bagels")
  r5 = Recipe.new("Muffins")
  r6 = Recipe.new("Cake Pop")
  r47= Recipe.new("Penne Alla Vodka")
  r54= Recipe.new("Rice Dish")
  r65 = Recipe.new("Chicken Marsala")
  new_recipe = Recipe.new("lets see if this works")
  
  u1 = User.new("MC")
  u2 = User.new("David")
  u3 = User.new("My Mom")

  rc1 = RecipeCard.new("1981-01-01",u1,r1,5)
  rc3 = RecipeCard.new("2018-05-01",u1,r2,3)
  rc4 = RecipeCard.new("1991-01-01",u1,r2,2)
  rc5 = RecipeCard.new("1888-01-01",u1,r3,3)
  rc6 = RecipeCard.new("2000-0-01",u1,r3)
  rc7 = RecipeCard.new("1400-01-01",u1,r1,1)
  rc8 = RecipeCard.new("1919-01-01",u3,r1,5)
  rc9 = RecipeCard.new("1981-01-01",u1,r1,5)
  rc10 = RecipeCard.new("2018-05-01",u1,r2,3)
  rc11 = RecipeCard.new("1991-01-01",u1,r2,2)
  rc12 = RecipeCard.new("1888-01-01",u1,r54,9)
  rc13 = RecipeCard.new("2000-0-01",u1,r3)
  rc14 = RecipeCard.new("1400-01-01",u1,r65,10)
  rc15 = RecipeCard.new("1919-01-01",u1,r47,10)

  #Ingredients
  i1 = Ingredient.new("peanut")
  i2 = Ingredient.new("shellfish")
  i3 = Ingredient.new("tree nuts")
  i4 = Ingredient.new("eggs")

  a1 = Allergen.new(i1, u3)
  a2 = Allergen.new(i1, u1)
  a3 = Allergen.new(i4, u2)
  a4 = Allergen.new(i1, u2)
  a5 = Allergen.new(i3, u2)

  ri1 =RecipeIngredient.new(i1, r65)
  ri2 =RecipeIngredient.new(i2, r54)
  ri3 =RecipeIngredient.new(i3, r1)
  ri4 =RecipeIngredient.new(i4, r2)
  ri5 =RecipeIngredient.new(i1, r6)
  ri6 =RecipeIngredient.new(i2, r65)

binding.pry
