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
        MenuItem.all.select { |item| item.recipe == self}
    end

    def restaurants
        self.menu_items.map { |item| item.restaurant}
    end

    def average_price
        self.menu_items.sum { |item| item.price } / self.menu_items.count
    end

    def highest_price
        self.menu_items.map { |item| item.price}.max
    end

    def cheapest_restaurant
        self.menu_items.min_by { |item| item.price}.restaurant
    end

    def self.inactive
        # need to traverse through the recipes, and compare them with menu_items.
        # once those are compared, sort out which recipes are not in any of the menu_items and return in an array.
    end
end