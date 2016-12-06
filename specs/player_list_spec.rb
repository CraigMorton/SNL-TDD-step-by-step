require("minitest/autorun")
require("minitest/rg")
require_relative("../player_list.rb")
require_relative("../player.rb")

class PlayerListSpec < MiniTest::Test

	def setup
		@list = PlayerList.new()
		@player = Player.new("Craig")
		@list.add(@player)
	end

	def test_has_hash_of_players
		list = PlayerList.new()
		assert_equal({}, list.players)
	end

	def test_players_list_cannot_be_modified_outside_class
		@list.players["!!!"] = 6
		assert_equal(nil, @list.players["!!!"])
	end

	def test_list_stores_players_position
		assert_equal(0, @list.players[@player])
	end

end
