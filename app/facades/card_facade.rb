class CardFacade
    class << self
        def all_cards
            data = CardService.get_cards
            data.map do |card_data|
                Card.new(card_data)
            end
        end
    end
end