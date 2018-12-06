class Director
  def initialize(builder)
    @builder = builder
  end

  def construct
    @builder.make_title('Greeting')
    @builder.make_string('朝から昼にかけて')
    @builder.make_items(%w[おはようございます。 こんにちは。])
    @builder.make_string('夜に')
    @builder.make_items(%w[こんばんは。 おやすみなさい。 さようなら])
    @builder.close
  end
end
