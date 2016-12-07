require("minitest/autorun")
require("minitest/rg")
require_relative("../turn.rb")

class TurnSpec < MiniTest::Test

  def test_can_instantiate
    Turn.new
  end

end
