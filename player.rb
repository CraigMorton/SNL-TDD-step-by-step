class Player

	def initialize(name)
		@name = name
	end

	def name
		return String.new(@name)
	end

	def roll(dice)
		dice.roll
	end

end
