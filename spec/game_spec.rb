require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:game) { described_class.new(player_1, player_2) }

  it 'performs an attack on another player' do
    expect(player_2).to receive(:receive_attack)
    game.attack(player_2)
  end
end
