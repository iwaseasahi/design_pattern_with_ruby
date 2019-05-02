require 'find'
require_relative 'expression'

class Writable < Expression
  def evaluate(dir)
    results = []
    Find.find(dir) do |path|
      next unless File.file?(path)
      results << path if File.writable?(path)
    end
    results
  end
end
