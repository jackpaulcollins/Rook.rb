class Hand
  attr_reader :hand
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def hand
    puts @cards
  end

  def return_to_deck(deck)
    @cards.each { |c| deck.return_to_deck(c) }
    @cards = nil
  end

  def pair?
    @cards.map(&:rank).each_with_object(Hash.new(0)) { |c, h| h[c] += 1 }.values.any? { |v| v > 1 }
  end
end