require("minitest/autorun")
require("minitest/reporters")

require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

    def setup
        @bear = Bear.new("Wojtek", "brown")
        @river = River.new("Dunajec")
        @fish = Fish.new("trout")
    end

    def test_has_name
        assert_equal("Wojtek", @bear.name)
    end

    def test_has_type
        assert_equal("brown", @bear.type)
    end

    def test_starts_with_empty_stomach
        assert_equal(0, @bear.food_count)
    end

    def test_eat_fish__fish_exists
        @river.add_fish(@fish)
        @bear.eat_fish(@river)
        assert_equal(1, @bear.food_count)
        assert_equal(0, @river.fish_count)
    end
    
end
