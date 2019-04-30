require_relative 'memento'

class Gamer
  FRUITS_NAME = %w[リンゴ ぶどう バナナ みかん]

  def initialize(money)
    @money = money
    @fruits = []
  end

  def get_money
    @money
  end

  def bet
    dice = rand(6) + 1
    case dice
    when 1
      @money += 100
      puts '所持金が増えました。'
    when 2
      @money /= 2
      puts '所持金が半分になりました。'
    when 6
      fruit = get_fruit
      puts "フルーツ(#{fruit})をもらいました。"
      @fruits << fruit
    else
      puts '何も起こりませんでした。'
    end
  end

  def create_memento
    memento = Memento.create(@money)
    @fruits.each do |fruit|
      memento.add_fruit(fruit) if fruit.include?('おいしい')
    end
    memento
  end

  def restore_memento(mememto)
    @money = mememto.money
    @fruits = mememto.get_fruits
  end

  def to_string
    '[money = ' + @money.to_s + ', fruits = ' + @fruits.to_s + ']'
  end

  private

  def get_fruit
    prefix = ''
    prefix = 'おいしい' if [true, false].sample
    prefix + FRUITS_NAME.sample
  end
end
