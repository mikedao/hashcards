class Card
  attr_reader :question, :answer

  def initialize(hash)
    @question = hash[:question]
    @answer = hash[:answer]
  end



end
