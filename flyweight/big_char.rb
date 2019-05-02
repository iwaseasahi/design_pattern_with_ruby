class BigChar
  def initialize(char_name)
    @char_name = char_name
    @font_data = File.open("big#{char_name}.txt", 'r') { |file| file.read }
  rescue StandardError => e
    puts e
    @font_data = char_name + '?'
  end

  def print
    puts @font_data
  end
end
