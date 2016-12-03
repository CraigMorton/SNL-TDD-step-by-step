require("minitest/autorun")
require("minitest/rg")
require_relative("../board.rb")

class BoardSpec < MiniTest::Test

	def test_can_create_board
		board = Board.new()
	end
	
end
