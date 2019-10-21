class Deck
    attr_reader :cards

    def initialize
        @cards = []
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        suits.each {|suit|ranks.each{|rank| @cards << Card.new(suit, rank)}}
    end

    def choose_card
       card =  @cards.sample
       @cards.delete(card)

    end
end

class Card

    attr_reader :rank, :suit

    def initialize (suit, rank)
        @rank = rank
        @suit = suit
    end


end
