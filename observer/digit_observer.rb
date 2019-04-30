require_relative 'observer'

class DigitObserver < Observer
  def update(number_generator)
    puts 'DigitObserver:' + number_generator.get_number.to_s
    sleep(1)
  end
end
