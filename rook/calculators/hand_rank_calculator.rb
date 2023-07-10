class HandRankCalculator
  def initialize(hand:)
    @hand = hand
  end

  def pair?
    cards.map(&:rank).each_with_object(Hash.new(0)) { |c, h| h[c] += 1 }.values.any? { |v| v > 1 }
  end

  def cards
    @hand.cards
  end
end