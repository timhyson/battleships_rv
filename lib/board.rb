class Board
  
  attr_reader :board, :map
  
  def initialize
    @board = ['A1']
    @map = ['A1']
 
  end
  def place(ship, coord)
    i=board.index(coord)
    board[i] = ship 
  end  
  
  def fire(coord)
    i = map.index(coord)
    if board[i] != map[i]
    puts "Hit!"
      board[i].hit
    else
      puts "Miss!"
  end
  end
end
    
    