require_relative 'singleton'

class Main
  puts('Start.')
  obj1 = Singleton.get_instance
  obj2 = Singleton.get_instance
  if obj1 == obj2
    puts('obj1とobj2は同じインスタンスです。')
  else
    puts('obj1とobj2は同じインスタンスではありません。')
  end
  puts('End.')
end
