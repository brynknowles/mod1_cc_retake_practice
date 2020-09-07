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

    def recipes  ## I tried using .filter here, and it screwed up my has_dish? method.
        self.menu_items.map {|item| item.recipe}
    end

    def has_dish?(recipe)
        self.recipes.include?(recipe) #always returns false if .map is used in the recipes method above!
    end

    def self.highest_rated
        self.all.max_by {|restaurant| restaurant.star_rating}
    end
end
