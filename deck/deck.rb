class Deck
  attr_reader :cards

  RANKS = %w[A 2 3 4 5 6 7 8 9 10 J Q K].freeze
  SUITS = %w[hearts diamonds clubs spades].freeze

  def initialize
    @cards = []
    create_deck
    shuffle_deck
  end

  def create_deck
    RANKS.each do |rank|
      SUITS.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle_deck
    @cards.shuffle!
  end

  def deal(num_cards)
    cards = @cards.pop(num_cards)
    Hand.new(cards)
  end

  def return_to_deck(cards)
    @cards << cards
  end

  def reset_deck
    @cards.clear
    create_deck
  end

  def count
    @cards.count
  end
end
