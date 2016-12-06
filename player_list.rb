class PlayerList

	def initialize
		@players = {}
	end

	def players
		return @players.clone
	end

	def add(player)
		@players[player] = 0
	end

	def update_position(player, tiles)
		@players[player] = 7
	end

end
