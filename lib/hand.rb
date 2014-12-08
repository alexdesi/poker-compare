module Poker
  class Hand
    CARDS_PER_HAND = 5
    attr_reader :cards

    def initialize(deck)
      @cards = deck.pop_cards(CARDS_PER_HAND)
    end

    def pair?
      values != values.uniq # if true it contains a pair|2 pairs|3oak|4oak 
    end

    def three_of_a_kind?
    end

    def four_of_a_kind?
    end

    def flush?
    end

    def straight?
    end

    def highest_cards
    end

    def full_house?
    end

    private

    def values
      @cards.map(&:value)
    end

  end
end