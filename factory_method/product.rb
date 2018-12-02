class Product
  def use
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
