require_relative 'random_number_generator'
require_relative 'digit_observer'
require_relative 'graph_observer'

class Main
  number_generator = RandomNumberGenerator.new
  observer1 = DigitObserver.new
  observer2 = GraphObserver.new
  number_generator.add_observer(observer1)
  number_generator.add_observer(observer2)
  number_generator.execute
end
