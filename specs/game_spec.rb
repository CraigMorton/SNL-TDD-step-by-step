require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")
require_relative("../player_list.rb")
require_relative("../player.rb")
require_relative("../board.rb")
require_relative("../dice.rb")
require_relative("../turn.rb")
require_relative("../movement.rb")

class GameSpec < MiniTest::Test

	def setup
		@board = Board.new(10, {})
		@list = PlayerList.new
		@player1 = Player.new("Craig")
		@player2 = Player.new("Morton")
		players = [@player1, @player2]
		dice = Dice.new(1)
		turn = Turn.new()
		movement = Movement.new(@board, @list, turn)
		@game = Game.new(dice, movement, players)
	end

	def test_has_player_list
		assert_equal(PlayerList, @game.movement.player_list.class)
	end

	def test_player_list_passed_to_initialize
		assert_equal(@list, @game.movement.player_list)
	end

	def test_has_board
		assert_equal(Board, @game.movement.board.class)
	end

	def test_board_passed_to_initialize
		assert_equal(@board, @game.movement.board)
	end

	def test_initialize_adds_players_to_player_list
		assert_equal(@player1, @game.movement.turn_order.current)
	end

	def test_initialize_adds_players_to_turn_order
		assert_equal(@player1, @game.movement.turn_order.current)
	end

	def test_play_turn_updates_player_position
		@game.play_turn
		assert_equal(1, @game.movement.player_list.position(@player1))
	end

	def test_play_turn_updates_turn_order
		@game.play_turn
		assert_equal(@player2, @game.movement.turn_order.current)
	end

end
