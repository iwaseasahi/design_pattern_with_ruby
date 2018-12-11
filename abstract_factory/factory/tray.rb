require_relative 'item'

class Tray < Item
  def initialize(caption)
    super(caption)
    @tray = []
  end

  def add(item)
    @tray << item
  end
end
