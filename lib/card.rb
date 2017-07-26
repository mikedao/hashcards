class Card
  attr_reader :question, :answer
  attr_accessor :deck
  def initialize(params, deck = nil)
    @question = params[:question]
    @answer = params[:answer]
    @deck = deck
  end
end
