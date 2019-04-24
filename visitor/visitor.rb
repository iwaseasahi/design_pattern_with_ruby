class Visitor
  def visit(entry)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
