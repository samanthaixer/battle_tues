class Player
  attr_reader :hit_points

  START_HIT_POINTS = 60
  ATTACK_COST = 10

  def initialize(name)
    @name = name
    @hit_points = START_HIT_POINTS
  end

  def display_name
    @name
  end

  def receive_attack
    "#{@hit_points -= ATTACK_COST}/#{START_HIT_POINTS}"
  end
end
