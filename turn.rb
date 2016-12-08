class Turn

  def initialize
    @order = []
  end

  def order
    Array.new(@order)
  end

  def add(player)
    @order.push(player)
  end

  def current
    @order.first
  end

end
