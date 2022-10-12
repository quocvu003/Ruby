class CardManager
    attr_accessor :LisrCard;
    ListCard = []
  
    def addCard(card)
      ListCard << card
    end
  
    def display()
      ListCard.each do |card| card.display() end
    end
  end