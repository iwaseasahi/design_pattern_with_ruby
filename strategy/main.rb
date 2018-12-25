require_relative 'winning_strategy'
require_relative 'prob_strategy'
require_relative 'player'

class Main
  if ARGV.length != 2
    puts('Usage: randomseed1 randomseed2')
    puts('Example: 314 15')
    exit!
  end
  seed1 = ARGV[0].to_i
  seed2 = ARGV[1].to_i
  player1 = Player.new('Taro', WinningStrategy.new(seed1))
  player2 = Player.new('Hana', ProbStrategy.new(seed2))
  10000.times do
    next_hand1 = player1.next_hand
    next_hand2 = player2.next_hand
    if next_hand1.is_stronger_than(next_hand2)
      puts('Winner:' + player1.name)
      player1.win
      player2.lose
    elsif next_hand2.is_stronger_than(next_hand1)
      puts('Winner:' + player2.name)
      player1.lose
      player2.win
    else
      puts('Even...')
    end
  end
  puts('Total result:')
  puts(player1.to_string)
  puts(player2.to_string)
end
