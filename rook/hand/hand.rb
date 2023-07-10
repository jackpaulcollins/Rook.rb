class Hand
  attr_reader :hand
  attr_accessor :cards

  def initialize(cards: nil)
    @cards = cards || []
  end

  def hand
    puts @cards
  end

  def return_to_deck(deck)
    @cards.each { |c| deck.return_to_deck(c) }
    @cards = nil
  end

  def add_to_hand(cards)
    @cards << cards
  end

  def pair?
    @cards.map(&:rank).each_with_object(Hash.new(0)) { |c, h| h[c] += 1 }.values.any? { |v| v > 1 }
  end
end