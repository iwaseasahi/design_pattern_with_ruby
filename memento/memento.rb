class Memento
  attr_reader :money

  def initialize(money)
    @money = money
    @fruits = []
  end

  def get_money
    @money
  end

  def add_fruit(fruit)
    @fruits << fruit
  end

  def get_fruits
    @fruits.clone
  end
end
