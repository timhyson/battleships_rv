class Ship
  
  attr_reader :size , :health 
  
  def initialize 
    @size = 1
    @health = 1
  end
  def hit
    @health = health-1
    puts "Dead!" 
  end    
 
end