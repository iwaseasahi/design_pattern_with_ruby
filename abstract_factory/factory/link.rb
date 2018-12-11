require_relative 'item'

class Link < Item
  attr_reader :url

  def initialize(caption, url)
    super(caption)
    @url = url
  end
end
