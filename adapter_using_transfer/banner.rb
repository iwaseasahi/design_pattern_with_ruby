class Banner
  def initialize(string)
    @string = string
  end

  def show_with_paren
    p '(' + @string + ')'
  end

  def show_with_aster
    p '*' + @string + '*'
  end
end
