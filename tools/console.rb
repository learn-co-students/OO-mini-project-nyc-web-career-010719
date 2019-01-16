require_relative '../config/environment.rb'

u1 = User.new("Joseph")
u2 = User.new("Dan")
u3 = User.new("Sarah")
u4 = User.new("Deborah")

r1 = Recipe.new("Key Lime Pie")
r2 = Recipe.new("Christmas Pizza")
r3 = Recipe.new("Chocolate Fake")
r4 = Recipe.new("Vegan Chicken")

i1 = Ingredient.new("sugar")
i2 = Ingredient.new("spice")
i3 = Ingredient.new("everything")
i4 = Ingredient.new("nice")

u1.declare_allergen(i1) #sugar
u1.declare_allergen(i2) #spice
# u1 recipes = key lime pie, christmas pizza, chocolate Fake
# we eant chocolate fake back
u2.declare_allergen(i1)
u2.declare_allergen(i3)

u1.add_recipe_card(r1, 1, Time.at(2345))
u1.add_recipe_card(r2, 1, Time.at(2345))
u1.add_recipe_card(r3, 1)
# u1.add_recipe_card(r1, 8)
# u1.add_recipe_card(r2, 5)
# u1.add_recipe_card(r2, 7)
# u1.add_recipe_card(r2, 2)
# u2.add_recipe_card(r3, 5)
# u2.add_recipe_card(r4, 7)
# u3.add_recipe_card(r4, 9)

ia1 = [i1]
ia2 = [i1, i2]
ia3 = [i3]
ia4 = [i3, i4]

r1.add_ingredients(ia1)
r2.add_ingredients(ia2)
r3.add_ingredients(ia3)
r4.add_ingredients(ia4)

# puts u1.top_three_recipes
# puts u2.top_three_recipes
# u1.most_recent_recipe
puts u1.safe_recipes
binding.pry
# 007ff764bc2b50
# 007ff764bc2b50
# 007ff764bc2b50
# 007ff764d42b60
# 007ff764d42b60
