require 'board'

describe Board do
  let(:ship)      { double :ship, position: ['A1'], hit: :hit, sunk?: false }
  let(:sunk_ship) { double :ship, position: ['A1'], hit: :hit, sunk?: true  }
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

  it 'can report if all ships are hit' do
    subject.place(sunk_ship)
    expect(subject).to be_all_sunk
  end

  it 'can report if not all ships are sunk' do
    subject.place(ship)
    expect(subject).not_to be_all_sunk
  end
  
end
