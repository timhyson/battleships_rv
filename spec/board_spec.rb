require 'board'

describe Board do
  let(:ship){ double :ship, position: ['A1'], hit: :hit }
  # let(:ship_size_3){double(:ship , :hit => nil, :size => 3)}

  it 'reports missed hit when no ship at position' do
    expect(subject.receive_hit('A1')).to eq(:miss)
  end

  it 'can have a ship placed on it' do
    subject.place(ship)
    expect(subject.ships.first.position.first).to eq('A1')
  end

  it 'can receive a hit on a ship' do
    subject.place(ship)
    expect(subject.receive_hit('A1')).to eq(:hit)
  end
  #
  # it 'reports a miss' do
  #   expect{ subject.fire('A1') }.to output("Miss!\n").to_stdout
  # end
  #
  # it 'calls ship_hit method when ship is hit' do
  #   subject.place(ship, 'A1', 'E')
  #   expect(ship).to receive(:hit)
  #   subject.fire('A1')
  # end
  #
  # it 'returns Game Over when all ships are dead' do
  #   subject.place(ship, 'A1', 'E')
  #   expect{ subject.fire('A1') }.to output("Hit!\nGame Over\n").to_stdout
  # end
  #
  # it 'when placing a ship of size 3 it occupies 3 board elements in direction given' do
  #   subject.place(ship_size_3, 'E5', 'N')
  #   expect( [ subject.board[64], subject.board[54], subject.board[44] ] ).to eq [ ship_size_3, ship_size_3, ship_size_3 ]
  # end
  #
  # it 'Error when we shoot twice in the same place' do
  #   subject.place(ship_size_3, 'E5', 'N')
  #   subject.fire('E5')
  #   expect{ subject.fire('E5') }.to raise_error "Shoot in the same place"
  # end
  #
  # it 'does not allow ships to overlap' do
  #   subject.place(ship_size_3, 'E5', 'N')
  #   expect{ subject.place(ship_size_3, 'F6', 'E') }.to raise_error "Ships are overlapped"
  # end
  #
  # it 'raises error when ship is put off board' do
  #   expect{ subject.place(ship_size_3, 'J10', 'N') }.to raise_error "Ships are overlapped"
  # end
  #
  # it 'records numbers of hits' do
  #   subject.place(ship_size_3, 'E5', 'N')
  #   subject.fire('E5')
  #   expect(subject.al_hits.count).to eq(1)
  # end

end
