require_relative 'entry'

class Folder < Entry
  def initialize(name, size)
    @name = name
    @size = size
  end

  def get_name
    @name
  end

  def get_size
    @size
  end

  def print_list(prefix)
    puts(prefix + '/' + @name)
  end
end
