require_relative 'sunny_day'
require_relative 'rainy_day'
require_relative 'cloudy_day'

class Context
  attr_reader :sunny, :rainy, :cloudy

  def initialize
    @sunny = SunnyDay.new
    @rainy = RainyDay.new
    @cloudy = CloudyDay.new
    @state = @sunny
  end

  def change_state(weather)
    @state = \
      case weather
      when SunnyDay
        @sunny
      when RainyDay
        @rainy
      when CloudyDay
        @cloudy
      end
  end

  def ice_break
    puts @state.class
    @state.ice_break
  end

  def choose_fastion
    @state.choose_fastion
  end
end
