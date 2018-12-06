require_relative 'text_builder'
require_relative 'html_builder'
require_relative 'director'

class Main
  exit! if ARGV.length != 1
  if ARGV[0] == 'plain'
    text_builder = TextBuilder.new
    director = Director.new(text_builder)
    director.construct
    result = text_builder.buffer
    print(result)
  elsif ARGV[0] == 'html'
    html_builder = HtmlBuilder.new
    director = Director.new(html_builder)
    director.construct
    filename = html_builder.filename
    print(filename + 'が作成されました。')
  else
    exit!
  end
end
