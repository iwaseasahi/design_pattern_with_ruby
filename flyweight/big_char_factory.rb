require_relative 'big_char'

class BigCharFactory
  private_class_method :new
  @@singleton = nil

  class << self
    def create
      new
    end

    def get_instance
      @@singleton ||= create
    end
  end

  def initialize
    @pool = {}
  end

  def get_big_char(char_name)
    @pool[char_name.to_sym] ||= BigChar.new(char_name)
  end
end
