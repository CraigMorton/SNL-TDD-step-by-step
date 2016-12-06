class PlayerList

	def initialize
		@players = []
	end

	def players
		return @players
	end

	def add(player)
		@players.push(player)
	end

end
