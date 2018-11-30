require_relative 'char_display'
require_relative 'string_display'

class Main
  char_display = CharDisplay.new('H')
  char_display.display
  string_display1 = StringDisplay.new('Hello, World.')
  string_display1.display
  string_display2 = StringDisplay.new('こんにちは。')
  string_display2.display
end
