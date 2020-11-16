class Hero
    attr_accessor :name, :power, :bio

    @@heroes = []

    def initialize(info)
        @name = info[:name]
        @power = info[:power]
        @bio = info[:bio]
        @@heroes << self
    end

    def self.all
        @@heroes
    end

end 