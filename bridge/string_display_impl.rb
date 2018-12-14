require_relative 'display_impl'

class StringDisplayImpl < DisplayImpl
  def initialize(string)
    @string = string
    @width = string.encode('EUC-JP').bytesize
  end

  def raw_open
    print_line
  end

  def raw_print
    print('|' + @string + "|\n")
  end

  def raw_close
    print_line
  end

  private

  def print_line
    print('+')
    @width.times { print('-') }
    print("+\n")
  end
end
