require_relative '../factory/page'

class TablePage < Page
  def initialize(title, author)
    super(title, author)
  end

  def make_html
    buffer = '<html><head><title>' + @title + "</title></head>\n"
    buffer += "<body>\n"
    buffer += '<h1>' + @title + "</h1>\n"
    buffer += "<table width=\"80%\" border=\"3\">\n"
    @content.each do |item|
      buffer += '<tr>' + item.make_html + "</tr>\n"
    end
    buffer += "</table>\n"
    buffer += '<hr><address>' + author + "</address>"
    buffer += "</body></html>\n"
  end
end
