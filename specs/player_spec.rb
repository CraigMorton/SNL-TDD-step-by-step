require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")

class PlayerSpec < MiniTest::Test

	def setup
		@player = Player.new()
	end

	def test_player_has_name
		assert_equal("Craig", @player.name)
	end


end
