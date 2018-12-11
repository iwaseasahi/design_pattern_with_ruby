class Factory
  class << self
    require_relative '../list_factory/list_factory'

    def get_factory(classname)
      Object.const_get(classname).new
    end
  end

  def create_link(caption, url)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def create_tray(caption)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def create_page(title, author)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
