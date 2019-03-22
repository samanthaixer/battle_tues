require 'player'

describe Player do
  it 'returns the name of the player' do
    player = Player.new("Sam")
    expect(player.display_name).to eq "Sam"
  end

  it 'reduces the hit points by 10 on attack' do
    player_1 = Player.new("Sam")
    player_2 = Player.new("Fred")
    expect(player_1.attack(player_2)).to eq "50/60"
  end
end
