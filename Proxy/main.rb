require_relative 'printer_proxy'

class Main
  printable = PrinterProxy.new('Alice')
  puts "名前は現在#{printable.get_printer_name}です。"
  printable.set_printer_name('Bob')
  puts "名前は現在#{printable.get_printer_name}です。"
  printable.print_out('Hello, world.')
end
