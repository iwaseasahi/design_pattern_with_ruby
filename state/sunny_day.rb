require_relative 'state'

class SunnyDay < State
  def ice_break
    puts '今日は晴れて、良い天気ですねー!!!'
  end

  def choose_fastion
    puts 'なのでスニーカーを履こう'
  end
end
