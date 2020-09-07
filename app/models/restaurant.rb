class Restaurant
    
    attr_reader :owner
    attr_accessor :name, :star_rating

    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating.to_i
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select {|item| item.restaurant == self}
    end

    def recipes
        self.menu_items.filter {|item| item.recipe}
    end
end
