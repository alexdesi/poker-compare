require 'rspec'
require './lib/deck'
require './lib/hand'

module Poker
  RSpec.describe Hand do
    describe '.new' do
      it 'creates a new Hands containing 5 cards' do
        expect(hand.cards.size).to eq(5)
      end

      it 'removes 5 cards from the Deck' do
        expect(deck.cards.size).to eq(52 - hand.cards.size)
      end
    end

    describe '#pair?' do
      it 'hands contains a Pair' do # note: "contains" does not mean "IS a Pair"
        allow(hand).to receive(:cards){pair}
        expect(hand.pair?).to be_truthy
      end

      it 'does not contain a Pair' do
        allow(hand).to receive(:cards){no_pair}
        expect(hand.pair?).to be_falsy
      end
    end

    let(:deck){Deck.new}
    let(:hand){Hand.new(deck)}

    let(:pair){[Card.new('2', 'C'), 
                Card.new('2', 'C'),
                Card.new('3', 'D'),
                Card.new('5', 'D'),
                Card.new('A', 'H') ]
    }
    let(:no_pair){[Card.new('2', 'C'), 
                Card.new('7', 'C'),
                Card.new('3', 'D'),
                Card.new('5', 'D'),
                Card.new('A', 'H') ]
    }
  end

end