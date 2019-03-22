class Game
  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = @player_1
  end

  # def attack(player)
  #   switch_turn
  #   @turn.receive_attack
  # end

  def attack
    switch_turn
    @turn.receive_attack
  end

  def switch_turn
    @turn == @player_1 ? @turn = @player_2 : @turn = @player_1
  end
end
