class Card
  attr_reader :c_hash
  
  def initialize(c_hash) 
    @c_hash = {"question" => "What is the capital of Alaska?", "answer" => "Juneu" } 
  end

  def question
    c_hash.values[0]
  end

  def answer
    c_hash.values[1]
  end

end
