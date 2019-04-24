require_relative 'directory'
require_relative 'folder'
require_relative 'list_visitor'

class Main
  puts 'Making root entries...'
  rootdir = Directory.new('root')
  bindir = Directory.new('bin')
  tmpdir = Directory.new('tmp')
  usrdir = Directory.new('usr')
  rootdir.add(bindir)
  rootdir.add(tmpdir)
  rootdir.add(usrdir)
  bindir.add(Folder.new('vi', 10000))
  bindir.add(Folder.new('latex', 20000))
  rootdir.accept(ListVisitor.new)

  puts ''
  puts 'Making user entries...'
  yuki = Directory.new('yuki')
  hanako = Directory.new('hanako')
  tomura = Directory.new('tomura')
  usrdir.add(yuki)
  usrdir.add(hanako)
  usrdir.add(tomura)
  yuki.add(Folder.new('dialy.html', 100))
  yuki.add(Folder.new('Composite.java', 200))
  hanako.add(Folder.new('memo.txt', 300))
  tomura.add(Folder.new('game.doc', 400))
  tomura.add(Folder.new('junk.mail', 500))
  rootdir.accept(ListVisitor.new)
end
