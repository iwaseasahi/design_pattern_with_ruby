class Display
  def get_columns
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def get_rows
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def get_row_text(row)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def show
    get_rows.times { |row| puts get_row_text(row) }
  end
end
