require("minitest/autorun")
require("minitest/rg")
require_relative("../player_list.rb")
require_relative("../player.rb")

class PlayerListSpec < MiniTest::Test

	def setup
		@list = PlayerList.new()
		@player = Player.new("Craig")
	end

	def test_has_array_of_players
		assert_equal([], @list.players)
	end

	def test_can_add_players
		@list.add(@player)
		assert_equal(@player, @list.players.first)
	end

	def test_players_list_cannot_be_modified_outside_class
		@list.add(@player)
		@list.players[0] = 6
		assert_equal(@player, @list.players.first)
	end

end
