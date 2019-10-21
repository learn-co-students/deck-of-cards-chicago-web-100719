
require 'pry'
class Deck
    attr_accessor :cards

    def initialize
        @cards = []
        for suit in ["Hearts", "Clubs", "Spades", "Diamonds"]
            for rank in [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]
                @cards << Card.new(suit, rank)
            end
        end
    end
        
    def choose_card
        card = self.cards.sample
        self.cards.delete(card)
    end
end

class Card
    attr_accessor :suit, :rank
    
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
  

    def self.all
        @@all
    end
    
end
