require("minitest/autorun")
require("minitest/reporters")

require_relative("../river.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

    def setup
        @river = River.new("Dunajec")
    end

    def test_river_has_name
        assert_equal("Dunajec", @river.name)
    end
    
end
