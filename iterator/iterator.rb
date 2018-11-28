class Iterator
  def has_next?
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def next
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
