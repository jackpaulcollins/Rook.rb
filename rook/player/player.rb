class Player
  attr_accessor :hand

  def initialize(name)
    @name = name
    @hand = Hand.new
  end

  def add_to_hand(cards)
    @hand.add_to_hand(cards)
  end
end
