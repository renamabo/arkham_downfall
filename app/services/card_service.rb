# frozen_string_literal: true

class CardService
  class << self
    # Services make calls to remote APIs
    # Gets all cards from ArkhamDB.com.'
    def get_cards
      response = BaseService.conn('https://arkhamdb.com/').get('/api/public/cards/')
      BaseService.parse_json(response)
    end
  end
end
