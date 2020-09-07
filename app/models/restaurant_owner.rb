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
        MenuItem.all.filter {|item| item.restaurant.owner == self}
    end
end