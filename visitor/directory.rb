require_relative 'entry'

class Directory < Entry
  attr_reader :directory

  def initialize(name)
    @name = name
    @directory = []
  end

  def get_name
    @name
  end

  def get_size
    size = 0
    @directory.each { |entry| size += entry.get_size }
    size
  end

  def add(entry)
    @directory << entry
  end

  def accept(visitor)
    visitor.visit(self)
  end
end
