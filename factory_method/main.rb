require_relative 'id_card_factory'

class Main
  id_card_factory = IdCardFactory.new
  card1 = id_card_factory.create('結城浩')
  card2 = id_card_factory.create('とむら')
  card3 = id_card_factory.create('佐藤花子')
  card1.use
  card2.use
  card3.use
end
