require 'destroyer'

describe Destroyer do
  let(:destroyer)       { described_class.new('A1', :south) }
  let(:destroyer_north) { described_class.new('C3', :north) }
  let(:destroyer_east ) { described_class.new('C3', :east ) }
  let(:destroyer_south) { described_class.new('C3', :south) }
  let(:destroyer_west ) { described_class.new('C3', :west ) }

  it 'has size 3' do
    expect(destroyer.size).to eq(3)
  end

  it 'knows all positions when facing north' do
    expect(destroyer_north.position).to eq(['C3', 'C2', 'C1'])
  end

  it 'knows all positions when facing east' do
    expect(destroyer_east.position).to eq(['C3', 'D3', 'E3'])
  end

  it 'knows all positions when facing south' do
    expect(destroyer_south.position).to eq(['C3', 'C4', 'C5'])
  end

  it 'knows all positions when facing west' do
    expect(destroyer_west.position).to eq(['C3', 'B3', 'A3'])
  end

  it 'gets hit in any of the positions it is in' do
    expect(destroyer_north.hit('C3')).to eq(:hit)
    expect(destroyer_north.hit('C2')).to eq(:hit)
    expect(destroyer_north.hit('C1')).to eq(:hit)
  end

end
