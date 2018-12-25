class Hand
  HANDVALUE_GUU = 0
  HANDVALUE_CHO = 1
  HANDVALUE_PAA = 2

  attr_accessor :handvalue

  class << self
    def get_hand(handvalue)
      @@hand[handvalue]
    end
  end

  def initialize(handvalue)
    @handvalue = handvalue
  end

  def is_stronger_than(h)
    fight(h) == 1
  end

  def is_weaker_than(h)
    fight(h) == -1
  end

  def to_string
    name[@handvalue]
  end

  @@hand = [
    Hand.new(HANDVALUE_GUU),
    Hand.new(HANDVALUE_CHO),
    Hand.new(HANDVALUE_PAA)
  ]

  private

  def name
    %w[ 'グー' 'チョキ' 'パー' ]
  end

  def fight(h)
    if self == h
      0
    elsif (self.handvalue + 1) % 3 == h.handvalue
      1
    else
      -1
    end
  end
end
