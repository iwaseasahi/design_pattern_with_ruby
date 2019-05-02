require_relative 'printable'

class Printer < Printable
  def initialize(name)
    @name = name
    heavy_job("Printerのインスタンス(#{@name})を生成中")
  end

  def set_printer_name(name)
    @name = name
  end

  def get_printer_name(name)
    @name
  end

  def print_out(string)
    puts "=== #{@name} ==="
    puts string
  end

  private

  def heavy_job(message)
    print message
    5.times do
      sleep(1)
      print '.'
    end
    puts '完了。'
  end
end
