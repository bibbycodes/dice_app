class Dice 
  def roll
    return rand(1..6)
  end
end

class Game
  def initialize
    @record = []
  end

  def record(roll)
    @record << roll
  end

  def score
    total = 0
    for record in @record
      total += record
    end
    return total
  end
end