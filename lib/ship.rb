class Ship

  attr_reader :size , :health

  def initialize(size)
    @size = size
    @health = size
  end
  def hit
    @health = health-1
    puts "Dead!" if health == 0
  end

end