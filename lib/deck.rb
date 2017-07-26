require_relative 'card'

class Deck

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

end
