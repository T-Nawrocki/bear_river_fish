class Bear

    attr_reader :name, :type

    def initialize(name, type)
        @name = name
        @type = type
        @stomach = []
    end
    
    def food_count
        return @stomach.count
    end

    def eat_fish(river)
        @stomach << river.remove_fish if river.fish_count > 0
    end

    def roar
        return "Rar!"
    end

end
