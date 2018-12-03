require_relative 'product'

class UnderlinePen < Product
  def initialize(ulchar)
    @ulchar = ulchar
  end

  def use(s)
    length = s.encode('EUC-JP').bytesize
    print '"' + s + '"'
    print "\n"
    print ' '
    length.times do
      print @ulchar
    end
    print "\n"
  end

  def create_clone
    self.clone
  end
end
