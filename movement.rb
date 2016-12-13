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

	def apply_modifier
		player = @turn_order.current
		position = @player_list.position(player)
		modifier = @board.modifier(position)
		@player_list.update_position(player, modifier)
	end

	def take_turn(dice)
		roll(dice)
		apply_modifier
	end

end
