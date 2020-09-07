class RestaurantOwner
    
    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age.to_i
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select {|restaurant| restaurant.owner == self}
    end

    def menu_items
        MenuItem.all.select {|item| item.restaurant.owner == self}
    end

    def self.average_age
        self.all.map {|owner| owner.age}.sum / self.all.length
    end

    def sell_restaurant(restaurant, buyer)  ## for some reason the stubborn owner will NOT transfer ownership!
        if restaurant.owner == self
            buyer = restaurant.owner
        else
            "Not for sale"
        end
    end

end