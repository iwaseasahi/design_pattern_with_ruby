require_relative 'colleague'

class JTPoorman < Colleague
  def initialize(mediator)
    super(mediator)

    puts "JT Poorman signed up with the stockexchange\n"
  end
end
