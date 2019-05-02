require_relative 'all'
require_relative 'not'
require_relative 'writable'
require_relative 'or'
require_relative 'and'
require_relative 'bigger'
require_relative 'file_name'

class Main
  expr_all = All.new
  files = expr_all.evaluate('test_dir')
  puts 'すべてのファイルを表示'
  puts files
  puts ''

  expr_not_writable = Not.new(Writable.new)
  readonly_files = expr_not_writable.evaluate('test_dir')
  puts '読み取り専用のファイルを表示'
  puts readonly_files
  puts ''

  big_or_mp3_expr = Or.new( Bigger.new(1024), FileName.new('*.mp3') )
  big_or_mp3s = big_or_mp3_expr.evaluate('test_dir')
  puts 'サイズが1,024kbかMP3のファイルを表示'
  puts big_or_mp3s
  puts ''

  complex_expression = And.new(And.new(Bigger.new(1024), FileName.new('*.mp3')), Not.new(Writable.new))
  complex_files = complex_expression.evaluate('test_dir')
  puts '読み取り専用で、サイズが1,024kbかつMP3のファイルを表示'
  puts complex_files
  puts ''
end
