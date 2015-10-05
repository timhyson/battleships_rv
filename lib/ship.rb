class Ship

  attr_reader :position, :hits

  def initialize(position)
    @position = position
    @hits     = []
  end
#   def initialize(size = 1)
#     @size = size
#     @health = size
#   end

  def hit(position)
    return :miss unless self.position.include?(position)
    hits << position unless hits.include?(position)
    :hit
  end

end
