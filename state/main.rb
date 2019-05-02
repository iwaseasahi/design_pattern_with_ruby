require_relative 'context'

class Main
  context = Context.new
  context.ice_break
  context.choose_fastion
  puts ''

  context.change_state(context.rainy)
  context.ice_break
  context.choose_fastion
  puts ''

  context.change_state(context.cloudy)
  context.ice_break
  context.choose_fastion
end
