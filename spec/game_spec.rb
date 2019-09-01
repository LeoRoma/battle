require './lib/game.rb'

describe Game do

let(:player_1) { Player.new("John") }
let(:player_2) { Player.new("Tom") }
let(:game) { Game.new}

  describe '#attack' do
    it 'attacks opponent player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
