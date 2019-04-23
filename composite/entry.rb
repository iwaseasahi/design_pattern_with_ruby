require_relative 'file_treatment_exception'

class Entry
  def get_name
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def get_size
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def add(entry)
    raise FileTreatmentException.new
  end

  def print_list(prefix)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def to_string
    get_name + '(' + get_size.to_s + ')'
  end
end
