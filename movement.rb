class Movement

	def initialize(board, player_list, turn_order)
		@board = board
		@player_list = player_list
		@turn_order = turn_order
	end

	def roll(dice)
		player = @turn_order.current
		@player_list.update_position(player, player.roll(dice))
	end

end
