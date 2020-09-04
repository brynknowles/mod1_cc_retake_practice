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
end