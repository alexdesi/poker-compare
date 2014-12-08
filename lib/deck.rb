require './lib/card'

module Poker
  class Deck
    attr_reader :cards

    def initialize
      create_cards
    end

    def to_s
      @cards.each do |card|
        puts card.value + card.suit
      end
    end

    def pop_cards(number)
      cards_taken = @cards.sample(number)
      @cards -= cards_taken
      cards_taken
    end

    private

    def create_cards
      @cards = []
      suits.each do |s|
        values.each do |v|
          @cards << Card.new(v,s)
        end
      end
    end

    def suits
      %w(C D H S)
    end

    def values
      %w(2 3 4 5 6 7 8 9 T J Q K A)
    end

  end
end