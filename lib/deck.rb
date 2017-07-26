require_relative '../lib/card'

class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def count
    self.cards.count
  end
end
