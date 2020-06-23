require("minitest/autorun")
require("minitest/reporters")

require_relative("../river.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

    def setup
        @river = River.new("Dunajec")
    end

    def test_has_name
        assert_equal("Dunajec", @river.name)
    end

    def test_starts_with_zero_fish
        assert_equal(0, @river.fish_count)
    end

    
end
