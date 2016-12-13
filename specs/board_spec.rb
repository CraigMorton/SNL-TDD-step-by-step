require("minitest/autorun")
require("minitest/rg")
require_relative("../board.rb")

class BoardSpec < MiniTest::Test

	def setup
		@board = Board.new(64, {})
	end

	def test_has_tiles_array
		assert_equal(Array, @board.tiles.class)
	end

	def test_constructor_sets_tiles_array_size_to_50
		board = Board.new(50, {})
		assert_equal(50, board.tiles.size)
	end

	def test_constructor_sets_tiles_array_size_to_64
		assert_equal(64, @board.tiles.size)
	end

	def test_tiles_array_default_value_is_0
		each_tile_zero = @board.tiles.map {|tile| tile == 0}
		all_tiles_zero = each_tile_zero.reduce {|prev, curr| prev && curr}
		assert_equal(true, all_tiles_zero)
	end

	def test_initialize_takes_modifier_config_hash
		board = Board.new(10, {})
	end

	def test_modifier_config_hash_sets_tile_values
		tile = 1
		config = {tile => -1}
		board = Board.new(10, config)
		assert_equal(-1, board.tiles[tile])
	end

	def test_can_get_modifer_without_exposing_tiles_array
		tile = 1
		config = {tile => -1}
		board = Board.new(10, config)

		modifier = board.modifier(1)
		assert_equal(-1, modifier)
	end

	def test_tiles_array_cannot_be_modified_outside_class
		@board.tiles[0] = "!!!"
		assert_equal(0, @board.tiles[0])
	end

end
