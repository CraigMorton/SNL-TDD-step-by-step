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

	def add_many(players)
		for player in players
			add(player)
		end
	end

	def update_position(player, tiles)
		@players[player] += tiles
	end

	def position(player)
		@players[player]
	end

end
