class Deck
  attr_reader :cards, :count, :cards_in_category
  def initialize(cards)
    
    @cards = cards
    
  end

  def count
    @count = cards.count 
  end

  def cards_in_category
    @cards_in_category == @category
  end
end

