require 'player'

describe Player do
  let(:player_1) { player = Player.new("Sam") }
  let(:player_2) { player_2 = Player.new("Fred") }

  it 'returns the name of the player' do
    expect(player_1.display_name).to eq "Sam"
  end

  it 'reduces the hit points by 10 on attack' do
    expect(Game.new(player_1, player_2).attack).to eq "50/60"
  end
end
