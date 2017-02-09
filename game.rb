class Game

	attr_reader :player_list, :board

	def initialize(dice, board, player_list)
		@board = board
		@player_list = player_list
	end

end
