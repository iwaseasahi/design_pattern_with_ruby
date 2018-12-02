class Factory
  def create(owner)
    product = create_product(owner)
    register_product(product)
    product
  end

  def create_product(owner)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def register_product(product)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
