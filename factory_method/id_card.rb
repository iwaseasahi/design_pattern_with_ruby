require_relative 'product'

class IdCard < Product
  attr_reader :owner

  def initialize(owner)
    puts(owner + 'のカードを作ります。')
    @owner = owner
  end

  def use
    puts(@owner + 'のカードを使います。')
  end
end
