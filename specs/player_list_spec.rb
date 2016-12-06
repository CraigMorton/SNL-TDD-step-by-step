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

	def test_can_update_player_position
		@list.update_position(@player, 7)
		assert_equal(7, @list.players[@player])
	end

	def test_can_update_position_twice
		@list.update_position(@player, 7)
		@list.update_position(@player, 3)
		assert_equal(10, @list.players[@player])
	end

	def test_can_update_negative_position
		@list.update_position(@player, 5)
		@list.update_position(@player, -3)
		assert_equal(2, @list.players[@player])
	end

	def test_can_add_multiple_players
		@list.add_many([Player.new("Jim"), Player.new("Bob")])
		assert_equal(3, @list.players.size)
	end

end
