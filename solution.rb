class Deck
attr_reader :cards
    def initialize
        @cards = []
        ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Ace", "Jack", "Queen", "King"]
        suits = ["Hearts", "Diamonds", "Clubs", "Spades"]

        suits.each do
            |s| ranks.each do
                |r| @cards << Card.new(s, r)
            end
        end
    end

    def cards
        @cards
    end

    def choose_card
        rando_card = cards.sample
        cards.delete(rando_card)
    end

end

class Card
attr_reader :rank, :suit
    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end



end
