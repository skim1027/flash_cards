class Deck
  attr_reader :cards, :count, :cards_in_category, :category
  def initialize(cards)
    @cards = cards

  end

  def count
    cards.count 
  end

  def cards_in_category(cat)
    new_card = []
    @cards.each do |card|
      if card.category == cat
        new_card << card
      end
    end
    new_card
  end


  # def cards_in_category(string)
  #   card_category = @cards.select do |card|
  #     card.category == string
  #   end
  # end


end

