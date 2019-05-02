class Expression
  def evaluate(dir)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
