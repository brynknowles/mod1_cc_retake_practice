# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

pancakes = Recipe.new("pancakes", "buttermilk pancakes")
eggs = Recipe.new("eggs", "scrambled eggs")
sausage = Recipe.new("sausage", "pork breakfast sausage")
waffles = Recipe.new("waffles", "scandanavian waffles")
tacos = Recipe.new("tacos", "variety of tacos")
nachos = Recipe.new("nachos", "nachos, choose your toppings!")

ari = RestaurantOwner.new("Ari", 4)
mamak = RestaurantOwner.new("Mama K", 37)
mamab = RestaurantOwner.new("Mama B", 45)
ziggy = RestaurantOwner.new("Ziggy", 7)

aris = Restaurant.new(ari, "Ari's", 4)
badabing = Restaurant.new(ari, "Badabing!", 4)
mamaks = Restaurant.new(mamak, "Mama K's", 5)
mamabs = Restaurant.new(mamab, "Mama B's", 4)
ziggys = Restaurant.new(ziggy, "Ziggy's", 3)

item1 = MenuItem.new(aris, pancakes, 3.50)
item2 = MenuItem.new(mamaks, eggs, 2.50)
item3 = MenuItem.new(mamabs, sausage, 1.50)
item4 = MenuItem.new(ziggys, waffles, 4.50)
item5 = MenuItem.new(mamabs, waffles, 5.50)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
