require_relative 'gamer'

class Main
  gamer = Gamer.new(100)
  memento = gamer.create_memento
  100.times do |time|
    puts '==== ' + time.to_s
    puts '現状: ' + gamer.to_string

    gamer.bet

    puts '所持金は' + gamer.get_money.to_s + '円になりました。'

    if gamer.get_money > memento.get_money
      puts '(だいぶ増えたので、現在の状態を保存しておこう)'
      memento = gamer.create_memento
    elsif gamer.get_money < (memento.get_money / 2)
      puts '(だいぶ減ったので、以前の状態に復帰しよう)'
      gamer.restore_memento(memento)
    end

    sleep(1)
    puts ''
  end
end
