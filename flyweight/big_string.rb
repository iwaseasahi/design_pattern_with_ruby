require_relative 'big_char'
require_relative 'big_char_factory'

class BigString
  def initialize(string)
    @bigchars = []
    @factory = BigCharFactory.get_instance
    string.length.times do |i|
      @bigchars[i] = BigChar.new(string.slice(i))
    end
  end

  def print
    @bigchars.each(&:print)
  end
end
