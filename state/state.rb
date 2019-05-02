class State
  def ice_break
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def choose_fastion
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
