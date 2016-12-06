require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")
require_relative("../player_list.rb")

class GameSpec < MiniTest::Test

	def test_can_instantiate
		Game.new
	end

	def test_has_player_list
		game = Game.new
		assert_equal(PlayerList, game.player_list.class)
	end

end
