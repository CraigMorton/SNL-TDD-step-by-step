require("minitest/autorun")
require("minitest/rg")
require_relative("../movement.rb")
require_relative("../board.rb")
require_relative("../player_list.rb")
require_relative("../turn.rb")

class MovementSpec < MiniTest::Test

	def test_takes_board_and_player_list_in_initialize
		board = Board.new(0, {})
		list = PlayerList.new
		turn = Turn.new
		movement = Movement.new(board, list, turn)
	end

end
