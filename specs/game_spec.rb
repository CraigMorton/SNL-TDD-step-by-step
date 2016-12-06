require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")

class GameSpec < MiniTest::Test

	def test_can_instantiate
		Game.new
	end

end
