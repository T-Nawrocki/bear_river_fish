class River
    
    attr_reader :name

    def initialize(name)
        @name = name
        @fish = []
    end

    def fish_count
        return @fish.count
    end

    def add_fish(fish)
        @fish.append(fish)
    end

    def remove_fish
        return @fish.slice!(0, 1)
    end
    
end