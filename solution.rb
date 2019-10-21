class Deck
    attr_reader :cards
    def initialize
        suits = ['Spades', 'Clubs', 'Hearts', 'Diamonds']
        ranks = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'jack', 'Q', 'king', 'ace']
        @cards = []
        suits.each do |suit|
            ranks.each do |rank|
                new_card = Card.new(suit, rank)
                @cards << new_card
            end
        end
    end

    def choose_card
        card = @cards.sample
        @cards.delete(card)
    end


end

class Card
    attr_reader :rank, :suit 
    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
end
