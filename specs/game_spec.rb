require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")
require_relative("../player_list.rb")
require_relative("../player.rb")
require_relative("../board.rb")

class GameSpec < MiniTest::Test

	def setup
		@list = PlayerList.new
		@list.add(Player.new("Craig"))
		@list.add(Player.new("Morton"))
		@game = Game.new(@list)
	end

	def test_has_player_list
		assert_equal(PlayerList, @game.player_list.class)
	end

	def test_player_list_passed_to_initialize
		assert_equal(@list, @game.player_list)
	end

	def test_has_board
		assert_equal(Board, @game.board.class)
	end

end
