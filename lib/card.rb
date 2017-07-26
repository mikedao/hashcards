class Card

  attr_reader :question,
              :answer

  def initialize(contents)
    @question = contents[:question]
    @answer   = contents[:answer]
  end
end
