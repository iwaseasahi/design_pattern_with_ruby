require_relative 'command'

class CompositeCommand < Command
  def initialize
    @commands = []
  end

  def add_command(command)
    @commands << command
  end

  def execute
    @commands.each(&:execute)
  end

  def undo_execute
    @commands.reverse.each(&:undo_execute)
  end

  def description
    description = ''
    @commands.each do |command|
      description += command.description + "\n"
    end
    description
  end

end
