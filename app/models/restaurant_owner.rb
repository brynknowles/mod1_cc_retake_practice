class RestaurantOwner

    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all 
        @@all
    end

    def restaurants
        Restaurant.all.select { |restaurant| restaurant.owner == self}
    end

    def menu_items
        self.restaurants.map { |restaurant| restaurant.menu_items}
    end

    def self.average_age
        self.all.map { |owner| owner.age}.sum / self.all.length
    end

    def sell_restaurant(restaurant, buyer)
        if restaurant.owner == self
            restaurant.owner = buyer
        else
            "This restaurant is not for sale"
        end
    end

end