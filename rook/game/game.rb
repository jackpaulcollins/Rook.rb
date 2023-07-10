class Game
  def initialize(players:)
    @players = players
    @deck = Deck.new(game: self)
    @nest = Nest.new
    deal_starting_hands_and_nest
  end

  def start_game
  end

  def deal_starting_hands_and_nest
    5.times do 
      @players.each do |player|
        player.add_to_hand(@deck.deal(1))
        @nest.add_to_nest(@deck.deal(1))
      end
    end

    while @deck.count.positive?
      @players.each do |player|
        player.add_to_hand(@deck.deal(1))
      end
    end
  end
end
