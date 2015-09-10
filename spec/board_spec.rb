require 'board'
describe Board do

  let(:ship){double(:ship , :hit => nil)}
 
  it 'We can put ship on the board' do
    subject.place(ship, 'A1')
    expect(subject.board.include?(ship)).to be_truthy
  end
  
    it 'reports a hit' do
    subject.place(ship, 'A1')
      expect{subject.fire('A1')}.to output("Hit!\n").to_stdout
end

  
  it 'reports a miss' do
      expect{subject.fire('A1')}.to output("Miss!\n").to_stdout
  end
  
  it 'when ship is hit, call ship_hit method' do
     subject.place(ship, 'A1')
    expect(ship).to receive(:hit)
    subject.fire('A1')
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