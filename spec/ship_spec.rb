require 'ship'
describe Ship do

  let(:subject){Ship.new(3)}

  it 'ship has health which is equal its life' do
    ship=Ship.new(5)
    expect(ship.size).to eq(ship.health)
  end

  it 'loses a life when it gets shot' do
    health = subject.health
    subject.hit
    expect(subject.health).to eq(health-1)
  end

  it 'tells us when it dead' do
    expect{subject.hit}.to output("Dead!\n").to_stdout
  end

  it 'lets us choose a size' do
    ship = Ship.new(5)
    expect(ship.size).to eq 5
  end


end
