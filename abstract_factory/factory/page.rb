class Page
  attr_reader :title, :author, :content

  def initialize(title, author)
    @title = title
    @author = author
    @content = []
  end

  def add(item)
    @content << item
  end

  def output
    filename = @title + '.html'
    File.open(filename, 'w') do |f|
      f.puts(self.make_html)
    end
    puts(filename + ' を作成しました。')
  end

  def make_html
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
