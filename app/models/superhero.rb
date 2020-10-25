class Superhero

    attr_accessor :name, :power, :bio

    SUPERHEROS = []
    
    def initialize(name, power, bio)
        @name = name
        @power = power
        @bio = bio
        SUPERHEROS << self
    end

    def self.all
        SUPERHEROS
    end

end
