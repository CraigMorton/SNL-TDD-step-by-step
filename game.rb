class Game

	attr_reader :player_list

	def initialize(player_list)
		@player_list = player_list
	end

	def board
		Board.new(0, {})
	end

end
