require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  it 'turn exists' do
    turn = Turn.new("Juneau", card)
  
    expect(turn).to be_instance_of(Turn)
  end

  it 'card exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card).to be_instance_of(Card)
  end

  it 'has a guess' do
    turn = Turn.new("Juneau", card)

    expect(turn.guess).to eq("Juneau")
  end

  it 'tells you if correct' do
    turn = Turn.new("Juneau", card)

    expect(turn.correct?).to be true
  end

  it 'give you feedback if correct' do
    turn = Turn.new("Juneau", card)

    expect(turn.feedback).to eq("Correct!")
  end


end