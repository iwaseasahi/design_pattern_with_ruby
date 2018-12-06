require_relative 'builder'

class HtmlBuilder < Builder
  attr_reader :filename

  def initialize
    @filename = ''
  end

  def make_title(title)
    @filename = title + '.html'
    File.open(@filename, 'w') do |f|
      f.puts('<html><head><title' + title + '</title></head></html>')
      f.puts('<h1>' + title + '</h1>')
    end
  end

  def make_string(str)
    File.open(@filename, 'a') do |f|
      f.puts('<p>' + str + '</p>')
    end
  end

  def make_items(items)
    File.open(@filename, 'a') do |f|
      f.puts('<ul>')
      items.each { |item| f.puts('<li>' + item + '</li>')}
      f.puts('</ul>')
    end
  end

  def close
    File.open(@filename, 'a') do |f|
      f.puts('</body></html>')
    end
  end
end
