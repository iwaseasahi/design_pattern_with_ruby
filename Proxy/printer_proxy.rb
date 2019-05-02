require_relative 'printable'
require_relative 'printer'

class PrinterProxy < Printable
  def initialize(name)
    @name = name
    @real = nil
  end

  def set_printer_name(name)
    @real.set_print_name(name) unless @real.nil?
    @name = name
  end

  def get_printer_name
    @name
  end

  def print_out(string)
    realize
    @real.print_out(string)
  end

  private

  def realize
    @real ||= Printer.new(@name)
  end
end
