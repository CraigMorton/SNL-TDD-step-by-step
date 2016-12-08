require("minitest/autorun")
require("minitest/rg")
require_relative("../turn.rb")
require_relative("../player.rb")

class TurnSpec < MiniTest::Test

  def setup
    @turn = Turn.new
    @player = Player.new("Craig")
    @player2 = Player.new("John")
    @player3 = Player.new("Jarrod")
  end

  def test_has_play_order_array
    assert_equal([], @turn.order)
  end

  def test_can_add_players_to_order
    @turn.add(@player)
    assert_equal(@player, @turn.order[0])
  end

  def test_order_cannot_be_modified_outside_class
    @turn.add(@player)
    @turn.order[0] = "!!!"
    assert_equal(@player, @turn.order[0])
  end

  def test_can_add_multiple_players
    add_three_players
    assert_equal(3, @turn.order.size)
    assert_equal(@player3, @turn.order[2])
  end

  def test_can_check_current_player
    add_three_players
    assert_equal(@player, @turn.current)
  end

  private

  def add_three_players
    @turn.add(@player)
    @turn.add(@player2)
    @turn.add(@player3)
  end

end
