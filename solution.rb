
class Card
    attr_accessor :suit, :rank
    def initialize (suit,rank)
        @suit = suit 
        @rank = rank 
       

    end
end 


class Deck
    attr_reader :cards
    def initialize
        @cards = []
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
       suits.each do |suit|
        ranks.each do |rank|
            @cards << Card.new(rank,suit)
        end 
    end 
end
def choose_card
    card = @cards.sample
    @cards.delete(card)
end 
end 

