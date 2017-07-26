class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
    @cards.each do |card|
      card.deck = self
    end
  end

  def count
    self.cards.count
  end
end
