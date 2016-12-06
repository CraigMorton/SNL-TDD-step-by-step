require("minitest/autorun")
require("minitest/rg")
require_relative("../dice.rb")

class DiceSpec < MiniTest::Test

	def setup
		@dice = Dice.new(6)
	end

	def test_can_roll
		assert_equal(Fixnum, @dice.roll.class)
	end

	def test_sides_chosen_at_initialize
		dice = Dice.new(100)
	end

end
