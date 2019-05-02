require 'fileutils'
require_relative 'command'

class DeleteFile < Command
  def initialize(path)
    super("Delete file: #{path}")
    @path = path
    @content = nil
  end

  def execute
    @content = File.read(@path) if File.exists?(@path)
    File.delete(@path)
  end

  def undo_execute
    File.open(@path, 'w') { |file| file.puts(@content) }
  end
end
