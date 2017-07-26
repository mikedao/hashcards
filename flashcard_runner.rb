require './lib/card'
require './lib/deck'
require './lib/guess'
require './lib/round'

class Runner

  def card_seed
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "What is the capital of Nebraska?", answer: "Lincoln")
    card_3 = Card.new(question: "What is the capital of South Dakota?", answer: "Pierre")
    card_4 = Card.new(question: "What is the capital of Colorado?", answer: "Denver")
    seed_deck([card_1, card_2, card_3, card_4])
  end

  def seed_deck(cards)
    Deck.new(cards)
  end
end
