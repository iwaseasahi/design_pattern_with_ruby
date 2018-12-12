require_relative '../factory/tray'

class TableTray < Tray
  def initialize(caption)
    super(caption)
  end

  def make_html
    buffer = "<td>\n"
    buffer = "<table width=\"100%\" border=\"1\"><tr>\n"
    buffer += "<td bgcolor=\"#cccccc\" align=\"center\" colspan=\"#{@tray.size}\"<b>" + @caption + "</b></td>\n"
    buffer += "</tr>\n"
    buffer += "<tr>\n"
    @tray.each do |item|
      buffer += item.make_html
    end
    buffer += "</tr></table>\n"
    buffer += "</td>\n"
  end
end
