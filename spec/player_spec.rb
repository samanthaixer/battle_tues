require 'player'

describe Player do
  it 'returns the name of the player' do
    player = Player.new("Sam")
    expect(player.display_name).to eq "Sam"
  end
end
