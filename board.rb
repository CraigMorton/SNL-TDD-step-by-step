class Board

	attr_reader :tiles

	def initialize(board_size, modifier_config)
		@tiles = Array.new(board_size.to_i, 0)
	end

end
