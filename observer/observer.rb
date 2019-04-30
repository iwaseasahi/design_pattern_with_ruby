class Observer
  def update(number_generator)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
