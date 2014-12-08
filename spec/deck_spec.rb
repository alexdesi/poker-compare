require 'rspec'
require './lib/deck'
require './lib/hand'

RSpec.describe Deck do
  describe '.new' do
    it 'creates a new Deck containing 52 cards' do
      deck = Deck.new
      expect(deck.cards.size) == 52
    end

  end
end
