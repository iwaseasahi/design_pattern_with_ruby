require_relative 'database'
require_relative 'html_writer'

class PageMaker
  class << self
    def make_welcome_page(mail_address, file_name)
      mail_prop = Database.get_properties('maildata')
      user_name = mail_prop.find { |prop| prop[:email] == mail_address }[:name]
      writer = HtmlWriter.new(File.open(file_name, 'w'))
      writer.title('Welcom to ' + user_name + "'s page!")
      writer.paragraph(user_name + 'のページへようこそ')
      writer.paragraph('メールまっていますね。')
      writer.mailto(mail_address, user_name)
      puts file_name + ' is created for ' + mail_address + '(' + user_name + ')'
    end
  end
end
