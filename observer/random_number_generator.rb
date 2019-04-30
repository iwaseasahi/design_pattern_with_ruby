require_relative 'number_generator'

class RandomNumberGenerator < NumberGenerator
  def initialize
    super
    @number = 0
  end

  def get_number
    @number
  end

  def execute
    20.times do
      @number  = rand(50)
      notify_observers
    end
  end
end
