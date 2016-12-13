class Board

	def initialize(board_size, modifier_config)
		@tiles = Array.new(board_size.to_i, 0)
		for tile_index, modifier in modifier_config
			@tiles[tile_index] = modifier
		end
	end

	def tiles
		return Array.new(@tiles)
	end

	def modifier(position)
		return @tiles[position]
	end

end
