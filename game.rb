class Game

	attr_reader :movement

	def initialize(dice, movement, players)
    @dice = dice
    @movement = movement
    players.each do |player|
      @movement.player_list.add(player)
      @movement.turn_order.add(player)
    end
	end

  def play_turn
    @movement.take_turn(@dice)
  end

end
