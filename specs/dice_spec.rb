require("minitest/autorun")
require("minitest/rg")
require_relative("../dice.rb")

class DiceSpec < MiniTest::Test

	def setup
		@dice = Dice.new
	end

	def test_can_roll
		assert_equal(Fixnum, @dice.roll.class)
	end

end
