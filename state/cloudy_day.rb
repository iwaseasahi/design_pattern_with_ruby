require_relative 'state'

class CloudyDay < State
  def ice_break
    puts '今日は天気悪いんですかねー...'
  end

  def choose_fastion
    puts 'なのでなんでもよい'
  end
end
