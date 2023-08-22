require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  it 'card exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    
    expect(card).to be_instance_of(Card)
  end
  
  it 'turn exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
  
    expect(turn).to be_instance_of(Turn)
  end

    it 'has a guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    expect(turn.guess).to eq("Juneau")
  end

  it 'tells you if correct' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    expect(turn.correct?).to be true
  end

  xit 'give you feedback if correct' do
    turn = Turn.new("Juneau", card)

    expect(turn.feedback).to eq("Correct!")
  end

  xit 'tells you if incorrect' do
    turn = Turn.new("Other answer", card)

    expect(turn.correct?).to be false  
  end
    
  xit 'gives you feedback if incorrect' do
    turn = Turn.new("Other answer", card)

    expect(turn.feedback).to eq("Incorrect.")
  end
end