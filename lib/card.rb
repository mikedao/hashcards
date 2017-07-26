# Good luck!
class Card
  attr_reader :question, :answer

  def initialize(keys)
    keys.each do |key, value|
      instance_variable_set("@#{key}", value) unless value.nil?
    end
  end
end
