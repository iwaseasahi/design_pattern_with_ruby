require_relative '../factory/page'

class ListPage < Page
  def initialize(title, author)
    super(title, author)
  end

  def make_html
    buffer = '<html><head><title>' + @title + "</title></head>\n"
    buffer += "<body>\n"
    buffer += '<h1>' + @title + "</h1>\n"
    buffer += "<ul>\n"
    @content.each do |item|
      buffer += item.make_html
    end
    buffer += "</ul>\n"
    buffer += '<hr><address>' + author + "</address>"
    buffer += "</body></html>\n"
  end
end
