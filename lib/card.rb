# Good luck!
class Card

  def initialize(card_data)
    @card_data = card_data
  end

  def question
  @card_data[:question]
  end

  def answer
    @card_data[:answer]
  end
end
