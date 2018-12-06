require_relative 'builder'

class TextBuilder < Builder
  attr_reader :buffer

  def initialize
    @buffer = ''
  end

  def make_title(title)
    @buffer += "==============================\n"
    @buffer += '[' + title + ']' + "\n"
    @buffer += "\n"
  end

  def make_string(str)
    @buffer += '■' + str + "\n"
    @buffer += "\n"
  end

  def make_items(items)
    items.each do |item|
      @buffer += '・' + item + "\n"
    end
    @buffer += "\n"
  end

  def close
    @buffer += "==============================\n"
  end
end
