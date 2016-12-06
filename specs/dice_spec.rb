require("minitest/autorun")
require("minitest/rg")
require_relative("../dice.rb")

class DiceSpec < MiniTest::Test

	def test_can_initialize
		Dice.new
	end

end
