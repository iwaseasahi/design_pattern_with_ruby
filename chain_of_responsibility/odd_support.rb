require_relative 'support'

class OddSupport < Support
  def initialize(name)
    super(name)
  end

  def resolve(trouble)
    if trouble.number % 2 == 1
      true
    else
      false
    end
  end
end
