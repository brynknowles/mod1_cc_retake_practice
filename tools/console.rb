# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

## RestaurantOwner Instances 

Ari = RestaurantOwner.new("Ari", 4)
Bryn = RestaurantOwner.new("Bryn", 45)
Katherine = RestaurantOwner.new("Katherine", 37)

## Restaurant Instances

rest1 = Restaurant.new(Ari, "Pancakes Every Day", 5)
rest2 = Restaurant.new(Ari, "Burger Fry", 5)
rest3 = Restaurant.new(Bryn, "Mexican Food 24-7", 3)
rest4 = Restaurant.new(Bryn, "Pizza Schmizza", 4)
rest5 = Restaurant.new(Katherine, "All Things Vegan", 5)
rest6 = Restaurant.new(Katherine, "Coffee & Bagels", 4)
rest7 = Restaurant.new(Katherine, "You Eat", 5)

## Recipe Instances

pancakes = Recipe.new("Pancakes", "Buttermilk")
egg = Recipe.new("Egg", "Over-easy")
sausage = Recipe.new("Sausage", "Pork links")
burger = Recipe.new("Burger", "Sustainable beef patty")
fries = Recipe.new("Fries", "Shoestring potatoes")
shrimp_taco = Recipe.new("Surf Taco", "Shrimp")
beef_taco = Recipe.new("Beef Taco", "Barbancoa")
pep_pizza = Recipe.new("Pepperoni Slice", "Thin crust pizza")
cheese_pizza = Recipe.new("Cheese Slice", "Thin crust pizza")
spaghetti = Recipe.new("Spaghetti & Meatballs", "Vegan meatballs w sauce.")
salad = Recipe.new("Fall Salad", "Mixed greens")
bagel = Recipe.new("Breakfast Bagel", "Egg & cheese bagel")
bratwurst = Recipe.new("Brat", "Bratwurst -secret recipe!")
pierogis = Recipe.new("Pierogis", "Pierogi platter - secret recipe")
kapusta = Recipe.new("Kapusta", "Kapusta - secret recipe")
sauces = Recipe.new("Sauces", "Assorted mustards")

## MenuItem Instances - This is the JOIN class

item1 = MenuItem.new(rest1, pancakes, 5.50)
item2 = MenuItem.new(rest1, egg, 2.50)
item3 = MenuItem.new(rest1, sausage, 2.50)
item4 = MenuItem.new(rest2, burger, 7.50)
item5 = MenuItem.new(rest2, fries, 1.50)
item6 = MenuItem.new(rest3, shrimp_taco, 3.50)
item7 = MenuItem.new(rest3, beef_taco, 3.50)
item8 = MenuItem.new(rest3, pep_pizza, 3.50)
item9 = MenuItem.new(rest4, cheese_pizza, 3.50)
item10 = MenuItem.new(rest4, spaghetti, 9.50)
item11 = MenuItem.new(rest5, salad, 7.50)
item12 = MenuItem.new(rest5, bagel, 5.50)
item13 = MenuItem.new(rest6, bratwurst, 3.50)
item14 = MenuItem.new(rest7, pierogis, 8.50)
item15 = MenuItem.new(rest7, kapusta, 4.50)
item16 = MenuItem.new(rest7, sauces, 2.50)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
