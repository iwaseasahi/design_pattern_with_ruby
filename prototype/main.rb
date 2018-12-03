require_relative 'manager'
require_relative 'underline_pen'
require_relative 'message_box'

class Main
  manager = Manager.new
  upen = UnderlinePen.new('~')
  mbox = MessageBox.new('*')
  sbox = MessageBox.new('/')
  manager.register('strong message', upen)
  manager.register('warning box', mbox)
  manager.register('slash box', sbox)

  product1 = manager.create('strong message')
  product2 = manager.create('warning box')
  product3 = manager.create('slash box')
  product1.use('Hello, world.')
  product2.use('Hello, world.')
  product3.use('Hello, world.')
end
