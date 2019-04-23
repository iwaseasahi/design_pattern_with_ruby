require_relative 'display'

class StringDisplay < Display
  def initialize(string)
    @string = string
  end

  def get_columns
    @string.encode('EUC-JP').bytesize
  end

  def get_rows
    1
  end

  def get_row_text(row)
    row == 0 ? @string : nil
  end
end
