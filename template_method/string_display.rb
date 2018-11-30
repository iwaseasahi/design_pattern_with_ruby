require_relative 'abstract_display'

class StringDisplay < AbstractDisplay
  def initialize(string)
    @string = string
    @width = string.encode('EUC-JP').bytesize
  end

  def open
    print_line
  end

  def overprint
    print '|' + @string + "|\n"
  end

  def close
    print_line
  end

  private

  def print_line
    print '+'
    @width.times { print '-' }
    print "+\n"
  end
end
