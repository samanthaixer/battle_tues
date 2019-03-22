require 'game'

describe Game do
  let(:player_1) { double :player1 }
  let(:player_2) { double :player2 }
  let(:game) { described_class.new(player_1, player_2) }

  it 'shows that it is player 1 turn to start with' do
    expect(game.turn).to eq player_1
  end

  it 'performs an attack on player 2' do
    expect(player_2).to receive(:receive_attack)
    game.attack
  end

  it 'shows that it is player 2 turn after first attack' do
    allow(player_2).to receive(:receive_attack)
    game.attack
    expect(game.turn).to eq player_2
  end

  it 'shows returns the turn to player 1' do
    allow(player_2).to receive(:receive_attack)
    game.attack
    allow(player_1).to receive(:receive_attack)
    game.attack
    expect(game.turn).to eq player_1
  end
end
