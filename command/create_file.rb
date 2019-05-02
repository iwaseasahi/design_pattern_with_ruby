require 'fileutils'
require_relative 'command'

class CreateFile < Command
  def initialize(path, contents)
    super("Create file: #{path}")
    @path = path
    @contents = contents
  end

  def execute
    File.open(@path, 'w') { |file| file.puts(@contents) }
  end

  def undo_execute
    File.delete(@path)
  end
end
