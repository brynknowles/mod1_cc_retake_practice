# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

owner1 = RestaurantOwner.new("Ari", 4)
owner2 = RestaurantOwner.new("Bryn", 45)
owner3 = RestaurantOwner.new("Katherine", 37)

rest1 = Restaurant.new(owner1, "Pancakes Every Day", 5)
rest2 = Restaurant.new(owner1, "Burger Fry", 5)
rest3 = Restaurant.new(owner2, "Mexican Food 24-7", 3)
rest4 = Restaurant.new(owner2, "Pizza Schmizza", 4)
rest5 = Restaurant.new(owner3, "All Things Vegan", 5)
rest6 = Restaurant.new(owner3, "Coffee & Bagels", 4)
rest7 = Restaurant.new(owner3, "You Eat", 5)

## Does the Recipe description need to be the MenuItem?? I'm confused here.
## in example: recp1 = Recipe.new(item1, "Light and fluffy pancakes.") 
## instead of how I wrote out the description below?

recp1 = Recipe.new("Pancakes", "Light and fluffy pancakes.")
recp2 = Recipe.new("Over Easy Egg", "Lightly cooked egg, runny yolk")
recp3 = Recipe.new("Breakfast Sausage", "Pork sausage links pan-fried.")
recp4 = Recipe.new("Plain Burger", "Sustainable beef patty cooked as requested.")
recp5 = Recipe.new("Side of Fries", "Sustainable beef patty cooked as requested.")
recp6 = Recipe.new("Shrimp Taco", "Battered and fried shrimp with avocado, lime, mango, onion and cilantro on a corn tortilla")
recp7 = Recipe.new("Barbancoa Taco", "Braised beef with avocado, lime, onion and cilantro on a corn tortilla")
recp8 = Recipe.new("Carnitas", "Braised pork with avocado, lime, onion and cilantro on a corn tortiall")
recp9 = Recipe.new("Slice of Pepperoni", "Thin crust slice with pepperoni, mozz and sauce.")
recp10 = Recipe.new("Slice of Cheese", "Thin crust slice mozz and sauce.")
recp11 = Recipe.new("Vegan Spaghetti & Meatballs", "Vegetable-based meatballs with sauce.")
recp12 = Recipe.new("Fall Salad", "Mixed greens, nuts, fruits and balsamic vinegar dressing.")
recp13 = Recipe.new("Breakfast Bagel With The Works", "Eggs, cheese, braised greens and your choice of bagel-toasted.")
recp14 = Recipe.new("Bratwurst", "Made from scratch, secret family recipe!")
recp15 = Recipe.new("Plate O' Pierogis", "Secret family recipe!")
recp16 = Recipe.new("Kapusta", "Secret family recipe!")
recp17 = Recipe.new("Side Of Assorted Sauces", "Assorted mustards because mustard is all you need!")

item1 = MenuItem.new(rest1, recp1, 5.50)
item2 = MenuItem.new(rest1, recp2, 2.50)
item3 = MenuItem.new(rest1, recp3, 2.50)
item4 = MenuItem.new(rest2, recp4, 7.50)
item5 = MenuItem.new(rest2, recp5, 1.50)
item6 = MenuItem.new(rest3, recp6, 3.50)
item7 = MenuItem.new(rest3, recp7, 3.50)
item8 = MenuItem.new(rest3, recp8, 3.50)
item9 = MenuItem.new(rest4, recp9, 3.50)
item10 = MenuItem.new(rest4, recp10, 3.50)
item11 = MenuItem.new(rest5, recp11, 9.50)
item12 = MenuItem.new(rest5, recp12, 7.50)
item13 = MenuItem.new(rest6, recp13, 5.50)
item14 = MenuItem.new(rest7, recp14, 3.50)
item15 = MenuItem.new(rest7, recp15, 8.50)
item16 = MenuItem.new(rest7, recp16, 4.50)
item17 = MenuItem.new(rest7, recp17, 2.50)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
