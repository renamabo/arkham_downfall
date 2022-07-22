# frozen_string_literal: true

class CardFacade
  class << self
    # Facades format calls made by services, generally turning each piece of data into a PORO

    # change to lib/services/cards_service.rb
    def all_cards
      data = CardService.get_cards
      data.map do |card_data|
        Card.new(card_data)
      end
    end

      # model logic
    def sort_investigators
      cards = CardFacade.all_cards
      cards.select do |card|
        card.type_code == "investigator"
      end
    end
     # model logic
    def sort_weaknesses
      cards = CardFacade.all_cards
      cards.select do |card|
        card.name != "Random Basic Weakness" && card.type_code == "treachery" && card.subtype_code == "basicweakness"
      end
    end
      
    # model logic 
    def duplicate_weaknesses
      cards = CardFacade.all_cards
      cards.each do |card|
        if card.type_code == "treachery" && card.subtype_code == "basicweakness" && card.deck_limit == 2
          card.dup        
        end
      end
    end
    
  end
end
