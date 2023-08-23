require './lib/turn'
require './lib/card'

card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
turn = Turn.new("Juneau", card)

RSpec.describe Turn do
  it 'card exists' do  
    expect(card).to be_instance_of(Card)
  end
  
  it 'turn exists' do
    expect(turn).to be_instance_of(Turn)
  end
  
  it 'has a guess' do
    expect(turn.guess).to eq("Juneau")
  end
  
  it 'tells you if correct' do
    expect(turn.correct?).to be true
  end

  it 'give you feedback if correct' do
    expect(turn.feedback).to eq("Correct!")
  end

  it 'tells you if incorrect' do
    turn = Turn.new("Other answer", card)
    expect(turn.correct?).to be false  
  end
    
  it 'gives you feedback if incorrect' do
    turn = Turn.new("Other answer", card)
    expect(turn.feedback).to eq("Incorrect.")
  end
end