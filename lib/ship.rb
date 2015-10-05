class Ship

  attr_reader :position, :hits, :size

  def initialize(position, size = 1)
    @position = position
    @hits     = []
    @size     = size
  end

  def hit(position)
    return :miss unless self.position.include?(position)
    hits << position unless hits.include?(position)
    :hit
  end

  def sunk?
    @hits.size >= @size
  end

end
