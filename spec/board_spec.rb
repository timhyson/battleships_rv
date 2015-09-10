require 'board'
describe Board do

  let(:ship){double(:ship , :hit => nil)}
  let(:ship_size_3){double(:ship , :hit => nil, :size => 3)}

  it 'We can put ship on the board' do
    subject.place(ship, 'A1')
    expect(subject.board.include?(ship)).to be_truthy
  end

    it 'reports a hit' do
    subject.place(ship, 'A1')
      expect{subject.fire('A1')}.to output("Hit!\nGame Over\n").to_stdout
end


  it 'reports a miss' do
      expect{subject.fire('A1')}.to output("Miss!\n").to_stdout
  end

  it 'when ship is hit, call ship_hit method' do
     subject.place(ship, 'A1')
    expect(ship).to receive(:hit)
    subject.fire('A1')
  end

  it 'When all ships are dead - game over' do
     subject.place(ship, 'A1')
    expect{subject.fire('A1')}.to output("Hit!\nGame Over\n").to_stdout
  end

  it 'when placing a ship of size 3 it occupies 3 board elements in direction given' do
    subject.place(ship_size_3, 'E5', 'N')
    expect([board[24], board[34], board[44]]).to eq [ship_size_3, ship_size_3, ship_size_3]
  end


#   it 'reports a hit' do
#     subject.place(ship()
#     expect(subject.hit ship).to eq("Hit!")
# end

#   it 'reports a miss' do
#     subject.place ship
#     expect(subject.hit("abc")).to eq("Miss")
#   end

# end
end