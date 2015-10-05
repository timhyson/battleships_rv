require 'submarine'

describe Submarine do
  let(:sub)       { described_class.new('A2', :north) }
  let(:sub_north) { described_class.new('B2', :north) }
  let(:sub_east ) { described_class.new('B2', :east ) }
  let(:sub_south) { described_class.new('B2', :south) }
  let(:sub_west ) { described_class.new('B2', :west ) }

  it 'has size 2' do
    expect(sub.size).to eq(2)
  end

  it 'knows all positions when facing north' do
    expect(sub_north.position).to eq(['B2', 'B1'])
  end

  it 'knows all positions when facing east' do
    expect(sub_east.position).to eq(['B2', 'C2'])
  end

  it 'knows all positions when facing south' do
    expect(sub_south.position).to eq(['B2', 'B3'])
  end

  it 'knows all positions when facing west' do
    expect(sub_west.position).to eq(['B2', 'A2'])
  end

  it 'gets hit in any of the positions it is in' do
    expect(sub_north.hit('B2')).to eq(:hit)
    expect(sub_north.hit('B1')).to eq(:hit)
  end

end
