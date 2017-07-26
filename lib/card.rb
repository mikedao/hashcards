class Card
  attr_reader :question,
              :answer

  def initialize(card)
    @question = card[:question]
    @answer   = card[:answer]
  end
end
