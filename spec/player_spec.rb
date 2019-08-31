require './lib/player.rb'

describe Player do
let(:john) { Player.new("John") }
let(:tom) { Player.new("Tom") }

  describe '#name' do
    it 'enters player 1 name' do
      expect(john.name).to eq "John"
    end

    it 'enters player 2 name' do
      expect(tom.name).to eq "Tom"
    end
  end

  describe '#hit_points' do
    it 'has some hp by default' do
      expect(tom.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'attacks opponent player' do
      expect(tom).to receive(:receive_damage)
      john.attack(tom)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
       expect { john.receive_damage }.to change { john.hit_points }.by(-10)
     end
   end
end
