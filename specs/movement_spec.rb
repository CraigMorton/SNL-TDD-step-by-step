require("minitest/autorun")
require("minitest/rg")
require_relative("../movement.rb")
require_relative("../board.rb")
require_relative("../player_list.rb")
require_relative("../turn.rb")
require_relative("../player.rb")
require_relative("../dice.rb")

class MovementSpec < MiniTest::Test

	def setup
		@board = Board.new(5, {})
		@list = PlayerList.new
		@turn = Turn.new
		@movement = Movement.new(@board, @list, @turn)
	end

	def test_manages_player_roll
		player = Player.new("Craig")
		@list.add(player)
		@turn.add(player)

		roll_one = Dice.new(1)
		@movement.roll(roll_one)
		assert_equal(1, @list.position(player))
	end

end
