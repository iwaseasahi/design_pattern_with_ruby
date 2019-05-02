require_relative 'composite_command'
require_relative 'create_file'
require_relative 'copy_file'
require_relative 'delete_file'

class Main
  command_list = CompositeCommand.new
  command_list.add_command(CreateFile.new('file1.txt', 'hello world\n'))
  command_list.add_command(CopyFile.new('file1.txt', 'file2.txt'))
  command_list.add_command(DeleteFile.new('file1.txt'))

  # 処理を実行するコマンド
  command_list.execute
  puts(command_list.description)

  # 処理を取り消すコマンド
  command_list.undo_execute
end

