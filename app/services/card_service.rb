class CardService
    class << self
        
        # Gets all cards from ArkhamDB.com.'
        def get_cards
            response = BaseService.conn("https://arkhamdb.com/").get("/api/public/cards/")
            BaseService.parse_json(response)
        end
    end
end