require_relative 'state'

class RainyDay < State
  def ice_break
    puts '今日は雨がザーザーですね!'
  end

  def choose_fastion
    puts 'なので長靴を履こう'
  end
end
