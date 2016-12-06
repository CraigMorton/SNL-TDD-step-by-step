class Dice

	def initialize(sides)
		@sides = sides
	end

	def roll
		Random.new.rand(1..@sides)
	end

end
