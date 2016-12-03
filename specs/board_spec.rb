require("minitest/autorun")
require("minitest/rg")
require_relative("../board.rb")

class BoardSpec < MiniTest::Test

	def setup
		@board = Board.new(64)
	end

	def test_has_tiles_array
		assert_equal(Array, @board.tiles.class)
	end

	def test_constructor_sets_tiles_array_size_to_50
		board = Board.new(50)
		assert_equal(50, board.tiles.size)
	end

end
