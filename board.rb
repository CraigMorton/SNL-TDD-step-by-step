class Board

	attr_reader :tiles

	def initialize(board_size)
		@tiles = Array.new(board_size.to_i)
	end

end
