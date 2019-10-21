class Deck

    attr_accessor :cards

    def initialize
        @cards = []
        ranks = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
        suits = ['Hearts', 'Diamonds', 'Club', 'Spades']
        
        suits.each do |suit| 
            ranks.each do |rank| 
                @cards << Card.new(suit, rank)
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
