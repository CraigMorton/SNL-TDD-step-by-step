class Turn

  def initialize
    @order = []
  end

  def order
    @order
  end

  def add(player)
    @order.push(player)
  end

end
