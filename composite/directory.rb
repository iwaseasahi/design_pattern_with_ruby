require_relative 'entry'

class Directory < Entry
  def initialize(name)
    @name = name
    @directory = []
  end

  def get_name
    @name
  end

  def get_size
    size = 0
    @directory.each { |item| size += item.get_size }
    size
  end

  def add(entry)
    @directory << entry
  end

  def print_list(prefix)
    puts(prefix + '/' + to_string)
    @directory.each { |item| item.print_list(prefix + '/' + get_name) }
  end
end
