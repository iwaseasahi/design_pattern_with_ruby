class Print
  def print_weak
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def print_strong
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
