require_relative 'visitor'

class ListVisitor < Visitor
  def initialize
    @currentdir = ''
  end

  def visit(entry)
    case entry.class.name
    when 'Folder'
      puts(@currentdir + '/' + entry.to_string)
    when 'Directory'
      puts(@currentdir + '/' + entry.to_string)
      savedir = @currentdir
      @currentdir += '/' + entry.get_name
      entry.directory.each { |directory| directory.accept(self) }
      @currentdir = savedir
    end
  end
end
