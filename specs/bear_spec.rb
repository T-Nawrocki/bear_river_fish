require("minitest/autorun")
require("minitest/reporters")

require_relative("../bear.rb")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

    def setup
        @bear = Bear.new("Wojtek", "brown")
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
    
end
