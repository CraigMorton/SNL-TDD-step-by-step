require("minitest/autorun")
require("minitest/rg")
require_relative("../modifier.rb")
require_relative("../board.rb")
require_relative("../player_list.rb")

class ModifierSpec < MiniTest::Test

	def test_takes_board_and_player_list_in_initialize
		board = Board.new(0, {})
		list = PlayerList.new
		modifier = Modifier.new(board, list)
	end

end
