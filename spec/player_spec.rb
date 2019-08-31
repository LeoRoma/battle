require './lib/player.rb'

describe Player do
let(:player_1) { Player.new("John") }
let(:player_2) { Player.new(name) }

  it 'gives the possibility to enter a name' do

    expect(player_1.name).to eq "John"
  end
end
