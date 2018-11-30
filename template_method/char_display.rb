require_relative 'abstract_display'

class CharDisplay < AbstractDisplay
  def initialize(char)
    @char = char
  end

  def open
    print '<<'
  end

  def overprint
    print @char
  end

  def close
    print ">>\n"
  end
end
