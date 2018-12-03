require_relative 'product'

class MessageBox < Product
  def initialize(decochar)
    @decochar = decochar
  end

  def use(s)
    length = s.encode('EUC-JP').bytesize
    (length + 4).times do
      print @decochar
    end
    print "\n"
    print @decochar + ' ' + s + ' ' + @decochar
    print "\n"
    (length + 4).times do
      print @decochar
    end
    print "\n"
  end

  def create_clone
    self.clone
  end
end
