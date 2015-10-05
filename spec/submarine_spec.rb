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

end
