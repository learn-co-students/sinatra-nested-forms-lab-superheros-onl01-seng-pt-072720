class Team

    attr_reader :name, :motto

    def initialize(attributes)
        @name = attributes[:name]
        @motto = attributes[:motto]
    end 
end 