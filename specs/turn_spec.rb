require("minitest/autorun")
require("minitest/rg")
require_relative("../turn.rb")

class TurnSpec < MiniTest::Test

  def setup
    @turn = Turn.new
  end

  def test_has_play_order_array
    assert_equal([], @turn.order)
  end

end
