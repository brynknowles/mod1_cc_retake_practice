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
        # need to make restaurant owner the buyer
        # use if statement to find who current owner is
        # if self is the current owner, buyer becomes new owner
    end

end