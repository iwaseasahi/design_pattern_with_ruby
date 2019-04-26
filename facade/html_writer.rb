class HtmlWriter
  def initialize(writer)
    @writer = writer
  end

  def title(title)
    @writer.puts('<html>')
    @writer.puts('<head>')
    @writer.puts('<title>' + title + '</title>')
    @writer.puts('</head>')
    @writer.puts('<body>')
    @writer.puts('<h1>' + title + '</h1>')
  end

  def paragraph(msg)
    @writer.puts('<p>' + msg + '</p>')
  end

  def link(href, caption)
    paragraph('<a href="' + href + '">' + caption + '</a>')
  end

  def mailto(mail_address, user_name)
    link('mailto:' + mail_address, user_name)
  end
end
