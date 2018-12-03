class Manager
  def initialize
    @showcase = {}
  end

  def register(name, proto)
    @showcase.store(name, proto)
  end

  def create(protoname)
    product = @showcase[protoname]
    product.create_clone
  end
end
