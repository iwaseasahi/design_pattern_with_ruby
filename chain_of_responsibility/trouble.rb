class Trouble
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_string
    '[Trouble ' + @number.to_s + ']'
  end
end
