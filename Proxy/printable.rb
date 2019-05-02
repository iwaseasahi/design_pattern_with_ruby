class Printable
  def set_printer_name(name)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def get_printer_name
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def print_out(string)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
