module Colleague
  def set_mediator(mediator)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def set_colleague_enabled(enabled)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
