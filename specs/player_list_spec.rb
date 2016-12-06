require("minitest/autorun")
require("minitest/rg")
require_relative("../player_list.rb")

class PlayerListSpec < MiniTest::Test

	def setup
		@list = PlayerList.new()
	end

	def test_has_array_of_players
		assert_equal([], @list.players)
	end

end
