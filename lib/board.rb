class Board

  attr_reader :ships

  def initialize
    @ships = []
  end

  def receive_hit(position)
    :miss
  end

  def place(ship)
    @ships << ship
  end

  # attr_reader :board, :map, :al_hits
  #
  # def initialize
  #   @board = ["A1","A2","A3","A4","A5","A6","A7","A8","A9","A10",
  #             "B1","B2","B3","B4","B5","B6","B7","B8","B9","B10",
  #             "C1","C2","C3","C4","C5","C6","C7","C8","C9","C10",
  #             "D1","D2","D3","D4","D5","D6","D7","D8","D9","D10",
  #             "E1","E2","E3","E4","E5","E6","E7","E8","E9","E10",
  #             "F1","F2","F3","F4","F5","F6","F7","F8","F9","F10",
  #             "G1","G2","G3","G4","G5","G6","G7","G8","G9","G10",
  #             "H1","H2","H3","H4","H5","H6","H7","H8","H9","H10",
  #             "I1","I2","I3","I4","I5","I6","I7","I8","I9","I10",
  #             "J1","J2","J3","J4","J5","J6","J7","J8","J9","J10"]
  #
  #   @map = [  "A1","A2","A3","A4","A5","A6","A7","A8","A9","A10",
  #             "B1","B2","B3","B4","B5","B6","B7","B8","B9","B10",
  #             "C1","C2","C3","C4","C5","C6","C7","C8","C9","C10",
  #             "D1","D2","D3","D4","D5","D6","D7","D8","D9","D10",
  #             "E1","E2","E3","E4","E5","E6","E7","E8","E9","E10",
  #             "F1","F2","F3","F4","F5","F6","F7","F8","F9","F10",
  #             "G1","G2","G3","G4","G5","G6","G7","G8","G9","G10",
  #             "H1","H2","H3","H4","H5","H6","H7","H8","H9","H10",
  #             "I1","I2","I3","I4","I5","I6","I7","I8","I9","I10",
  #             "J1","J2","J3","J4","J5","J6","J7","J8","J9","J10"]
  #
  #   @al_hits = []
  #
  # end
  # def place(ship, coord, direction)
  #   fail "Ships are overlapped" if overlap?(ship.size, coord, direction)
  #   i=board.index(coord)
  #   board[i] = ship
  #   n = 1
  #   while n < ship.size
  #     if direction == 'N'
  #       i += 10
  #       board[i] = ship
  #     elsif direction == 'S'
  #       i -= 10
  #       board[i] = ship
  #     elsif direction == 'E'
  #       i -= 1
  #       board[i] = ship
  #     elsif direction =='W'
  #       i += 1
  #       board[i] = ship
  #     else
  #       raise 'Invalid direction'
  #     end
  #     n += 1
  #   end
  # end
  #
  # def fire(coord)
  #   fail 'Shoot in the same place' if already_hit?(coord)
  #   i = map.index(coord)
  #   if board[i] != map[i]
  #   puts "Hit!"
  #     board[i].hit
  #     @al_hits << coord
  #     puts 'Game Over' if all_ship_dead?
  #   else
  #     puts "Miss!"
  # end
  # end
  #
  # def all_ship_dead?
  #     board.select{|s| s.is_a? Ship}.all? {|d| d.health == 0}
  # end
  # def already_hit?(coord)
  #   @al_hits.include?(coord)
  # end
  #
  # def overlap?(size, coord, direction)
  #   i=map.index(coord)
  #   if board[i] != map[i] || board[i] == nil
  #    true
  #  end
  #   n = 1
  #   while n < size
  #     if direction == 'N'
  #       i += 10
  #       return true if board[i] != map[i] || board[i] == nil
  #     elsif direction == 'S'
  #       i -= 10
  #     return true if board[i] != map[i] || board[i] == nil
  #     elsif direction == 'E'
  #       i -= 1
  #       return true if board[i] != map[i] || board[i] == nil
  #     elsif direction =='W'
  #       i += 1
  #      return true if board[i] != map[i] || board[i] == nil
  #     else
  #       raise 'Invalid direction'
  #     end
  #     n += 1
  #   end
  #
  #
  # end


end
