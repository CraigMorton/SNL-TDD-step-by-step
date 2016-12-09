require("minitest/autorun")
require("minitest/rg")
require_relative("../modifier.rb")

class ModifierSpec < MiniTest::Test

	def test_can_instantiate
		Modifier.new
	end

end
