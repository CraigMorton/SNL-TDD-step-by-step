require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")

class PlayerSpec < MiniTest::Test

	def test_can_create_player
		player = Player.new()
	end


end
