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
		@player = Player.new("Craig")
		@list.add(@player)
		@turn.add(@player)
	end

	def test_manages_player_roll
		move_one_tile
		assert_equal(1, @list.position(@player))
	end

	def test_manages_applying_tile_modifier
		ladder_movement = get_ladder_movement
		move_one_tile

		ladder_movement.apply_modifier
		assert_equal(3, @list.position(@player))
	end

	def test_move_and_apply_modifier_in_take_turn_method
		movement = get_ladder_movement
		movement.take_turn(Dice.new(1))
		assert_equal(3, @list.position(@player))
	end

	private

	def move_one_tile
		roll_one = Dice.new(1)
		@movement.roll(roll_one)
	end

	def get_ladder_movement
		ladder_board = Board.new(5, {1 => +2})
		ladder_movement = Movement.new(ladder_board, @list, @turn)
	end

end
