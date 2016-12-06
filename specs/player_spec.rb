require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")
require_relative("../dice.rb")

class PlayerSpec < MiniTest::Test

	def setup
		@player = Player.new("Craig")
	end

	def test_player_has_name
		assert_equal("Craig", @player.name)
	end

	def test_name_is_set_on_initialize
		player = Player.new("John")
		assert_equal("John", player.name)
	end

	def test_name_cant_be_modified_from_outside_class
		@player.name[0] = "!!!"
		assert_equal("Craig", @player.name)
	end

	def test_can_roll_dice
		dice = Dice.new(6)
		@player.roll(dice)
	end


end
