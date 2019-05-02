class Command
  attr_reader :description

  def initialize(description)
    @description = description
  end

  def execute
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def undo_execute
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
