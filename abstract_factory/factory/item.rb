module Factory
  class Item
    attr_reader :caption

    def initialize(caption)
      @caption = caption
    end

    def make_html
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end
