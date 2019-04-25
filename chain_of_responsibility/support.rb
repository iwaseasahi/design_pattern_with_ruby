class Support
  attr_accessor :next

  def initialize(name)
    @name = name
    @next = nil
  end

  def set_next(support)
    @next = support
  end

  def support(trouble)
    if resolve(trouble)
      done(trouble)
    elsif self.next != nil
      self.next.support(trouble)
    else
      fail(trouble)
    end
  end

  def to_string
    '[' + @name + ']'
  end

  def resolve(trouble)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def done(trouble)
    puts trouble.to_string + ' is resolved by ' + to_string + '.'
  end

  def fail(trouble)
    puts trouble.to_string + ' cannot be resolved.'
  end
end
