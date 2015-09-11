require 'board'
describe Board do

  let(:ship){double(:ship , :hit => nil, :size => 1)}
  let(:ship_size_3){double(:ship , :hit => nil, :size => 3)}

  it 'We can put ship on the board' do
    subject.place(ship, 'A1', 'E')
    expect(subject.board.include?(ship)).to be_truthy
  end

    it 'reports a hit' do
    subject.place(ship, 'A1', 'E')
      expect{subject.fire('A1')}.to output("Hit!\nGame Over\n").to_stdout
end


  it 'reports a miss' do
      expect{subject.fire('A1')}.to output("Miss!\n").to_stdout
  end

  it 'when ship is hit, call ship_hit method' do
     subject.place(ship, 'A1', 'E')
    expect(ship).to receive(:hit)
    subject.fire('A1')
  end

  it 'When all ships are dead - game over' do
     subject.place(ship, 'A1', 'E')
    expect{subject.fire('A1')}.to output("Hit!\nGame Over\n").to_stdout
  end

  it 'when placing a ship of size 3 it occupies 3 board elements in direction given' do
    subject.place(ship_size_3, 'E5', 'N')
    expect( [ subject.board[64], subject.board[54], subject.board[44] ] ).to eq [ ship_size_3, ship_size_3, ship_size_3 ]
  end
 
  it ' Error when we shoot twice in the same place' do
    subject.place(ship_size_3, 'E5', 'N')
    subject.fire('E5')
    expect{subject.fire('E5')}.to raise_error "Shoot in the same place"
  end

  it 'you cannot overlap ships' do
    subject.place(ship_size_3, 'E5', 'N')
    expect{subject.place(ship_size_3, 'F6', 'E')}.to raise_error "Ships are overlapped"
  end

  it 'raise error when ship is put of board' do
  expect{subject.place(ship_size_3, 'J10', 'N')}.to raise_error "Ships are overlapped" 
  end 

  it' record numbers of hits' do 
  subject.place(ship_size_3, 'E5', 'N')
  subject.fire('E5')
  expect(subject.al_hits.count).to eq(1)
  end

    
    
    
    
    
    
    
    
end