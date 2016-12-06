require("minitest/autorun")
require("minitest/rg")
require_relative("../player_list.rb")
require_relative("../player.rb")

class PlayerListSpec < MiniTest::Test

	def setup
		@list = PlayerList.new()
	end

	def test_has_array_of_players
		assert_equal([], @list.players)
	end

	def test_can_add_players
		player = Player.new("Craig")
		@list.add(player)
		assert_equal(player, @list.players.first)
	end

end
