require 'find'
require_relative 'expression'

class All < Expression
  def evaluate(dir)
    results = []
    Find.find(dir) do |path|
      next unless File.file?(path)
      results << path
    end
    results
  end
end
