class Deck
  attr_reader :cards

  RANKS = %w[1 2 3 4 5 6 7 8 9 10 11 12 13 14].freeze
  SUITS = %w[green red black yellow].freeze
  ROOK = Card.new("rook", "rook")
  SKIPPABLE_RANKS = %w[1 2 3 4]

  def initialize(game)
    @game = game
    @cards = []
    create_deck
    shuffle_deck
    cut_deck
  end

  def create_deck
    RANKS.each do |rank|
      next if SKIPPABLE_RANKS.include?(rank)
      SUITS.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end

    @cards << ROOK
  end

  def shuffle_deck
    @cards.shuffle!
  end

  def cut_deck
    pivot_point = rand(15..25)
    left,right = @cards.each_slice(pivot_point).to_a
    @cards = right | left
  end

  def deal(num_cards)
    @cards.pop(num_cards)
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
