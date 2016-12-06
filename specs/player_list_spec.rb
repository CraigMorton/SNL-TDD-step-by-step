require("minitest/autorun")
require("minitest/rg")
require_relative("../player_list.rb")

class PlayerListSpec < MiniTest::Test

	def test_can_instantiate
		PlayerList.new()
	end

end
