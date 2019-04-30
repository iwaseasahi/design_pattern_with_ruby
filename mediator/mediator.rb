module Mediator
  def create_colleagues
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def colleague_changed
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
