require("minitest/autorun")
require("minitest/rg")
require_relative("../board.rb")

class BoardSpec < MiniTest::Test

	def setup
		@board = Board.new()
	end

	def test_has_tiles_array
		assert_equal(Array, @board.tiles.class)
	end

end
