class Product
  def use(s)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def create_clone
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
