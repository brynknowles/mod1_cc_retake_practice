class Recipe
    
    attr_reader :name
    attr_accessor :description

    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select {|item| item.recipe == self}
    end

    def restaurants
        self.menu_items.collect {|item| item.restaurant}
    end

    def average_price
        self.menu_items.map {|item| item.price}.sum / menu_items.length
    end

    def highest_price
        self.menu_items.map {|item| item.price}.max
    end

    def cheapest_restaurant
        self.menu_items.min {|item| item.price}.restaurant
    end

    def self.inactive ## I can't seem to get this one to work. It returns an empty array or an array of all the recipes. Wondering if it has to do with my menu_items method?
        #iterate over all the recipe instances. 
        #if the recipe instance is not associated with any restaurant, collect that recipe instance
        #return the array of recipe instances not associated with any restaurants
        inactive_recipes = []
        self.all.each do |recipe|
            if recipe.restaurants != true
                inactive_recipes << recipe
            end
            # if recipe.restaurants != self
            #     inactive_recipes << recipe
            # end
        end
        inactive_recipes
    end

end