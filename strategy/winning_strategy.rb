require_relative 'strategy'
require_relative 'hand'

class WinningStrategy < Strategy
  def initialize(seed)
    @random = Random.new(seed)
    @won = false
    @prev_hand = 0
  end

  def next_hand
    if !@won
      @prev_hand = Hand.get_hand(@random.rand(3))
    end
    @prev_hand
  end

  def study(win)
    @won = win
  end
end
