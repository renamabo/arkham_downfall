# frozen_string_literal: true

class CardFacade
  class << self
    # Facades format calls made by services, generally turning each piece of data into a PORO
    def all_cards
      data = CardService.get_cards
      data.map do |card_data|
        Card.new(card_data)
      end
    end
  end
end
