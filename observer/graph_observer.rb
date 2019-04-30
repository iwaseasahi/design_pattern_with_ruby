require_relative 'observer'

class GraphObserver < Observer
  def update(number_generator)
    print 'GraphObserver:'
    number_generator.get_number.times { print '*' }
    puts ''
    sleep(1)
  end
end
