require 'game'

describe Game do
  let(:player_1) { Player.new("Sam") }
  let(:player_2) { Player.new("Fred") }
  let(:game) { described_class.new }

  it 'performs an attack on another player' do
    expect(player_2).to receive(:receive_attack)
    game.attack(player_2)
  end
end
