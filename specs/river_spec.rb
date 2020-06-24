require("minitest/autorun")
require("minitest/reporters")

require_relative("../river.rb")
require_relative("../fish.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

    def setup
        @river = River.new("Dunajec")
        @fish_1 = Fish.new("trout")
    end

    def test_has_name
        assert_equal("Dunajec", @river.name)
    end

    def test_starts_with_zero_fish
        assert_equal(0, @river.fish_count)
    end

    def test_add_fish
        @river.add_fish(@fish_1)
        assert_equal(1, @river.fish_count)
    end

    def test_remove_fish
        @river.add_fish(@fish_1)
        @river.remove_fish
        assert_equal(0, @river.fish_count)
    end
    
end
