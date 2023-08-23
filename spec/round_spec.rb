require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'


card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
cards = [card_1, card_2, card_3]
deck = Deck.new(cards)
round = Round.new(deck)
turn = Turn.new("Juneau", card_1)

RSpec.describe Round do
  it 'exists' do
    expect(round).to be_instance_of(Round)
  end

  it 'turns cards' do
    expect(round.turns).to eq([])
  end


  it 'shows the deck' do
    expect(round.deck).to eq(deck)
  end

  it 'shows current card' do
      expect(round.current_card).to eq(card_1)
  end  

  it 'takes turn and stores the guess' do
    new_turn = round.take_turn("Juneau")
    expect(take_turn("Juneau")).to eq(turn.guess)

  end



end