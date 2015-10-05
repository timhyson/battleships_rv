class Board
  attr_reader :ships

  def initialize
    @ships = []
    @hits  = []
  end

  def receive_hit(position)
    @ships.map { |ship| ship.hit(position) }.include?(:hit) ? :hit : :miss
  end

  def place(ship)
    @ships << ship
  end

  def all_sunk?
    return false if @ships.empty?
    !@ships.map(&:sunk?).include? false
  end

end
