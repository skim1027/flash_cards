class Turn
  attr_reader :guess, :card
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    return true if @guess == @card.answer 
    false
  end

  def feedback
     if @guess == @card.answer
      return "Correct!"
     else
      return "Incorrect." 
     end
  end


end