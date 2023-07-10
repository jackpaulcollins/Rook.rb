class Nest
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def add_to_nest(cards)
    @cards << cards
  end
end
