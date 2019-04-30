class Memento
  private_class_method :new
  attr_reader :money

  class << self
    def create(money)
      new(money)
    end
  end

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
