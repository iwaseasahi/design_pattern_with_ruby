require_relative 'big_string'

class Main
  if ARGV.length == 0
    puts 'Usage: ruby Main digits'
    puts 'Example: ruby Main 1212123'
    exit!
  end

  big_string = BigString.new(ARGV[0])
  big_string.print
end
