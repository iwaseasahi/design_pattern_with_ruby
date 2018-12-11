require_relative '../factory/tray'

class ListTray < Tray
  def initialize(caption)
    super(caption)
  end

  def make_html
    buffer = "<li>\n"
    buffer += @caption + "\n"
    buffer += "<ul>\n"
    @tray.each do |item|
      buffer += item.make_html
    end
    buffer += "</ul>\n"
    buffer += "</li>\n"
  end
end
