require("minitest/autorun")
require("minitest/reporters")

require_relative("../fish.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class FishTest < MiniTest::Test

    def setup
        @fish = Fish.new("trout")
    end

    def test_has_name
        assert_equal("trout", @fish.name)
    end
    
end
