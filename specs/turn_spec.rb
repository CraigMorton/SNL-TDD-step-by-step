require("minitest/autorun")
require("minitest/rg")
require_relative("../turn.rb")
require_relative("../player.rb")

class TurnSpec < MiniTest::Test

  def setup
    @turn = Turn.new
  end

  def test_has_play_order_array
    assert_equal([], @turn.order)
  end

  def test_can_add_players_to_order
    player = Player.new("Craig")
    @turn.add(player)
    assert_equal(player, @turn.order[0])
  end

end
