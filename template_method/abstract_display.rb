class AbstractDisplay
  def open
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def overprint
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def close
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def display
    open
    5.times { overprint }
    close
  end
end
