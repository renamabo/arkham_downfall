require './lib/services/base_service.rb'

namespace :cards do
  desc 'Cards service: connect to ArkhamDB, consumes API and parses json'
  # Services make calls to remote APIs
  # Gets all cards from ArkhamDB.com.'
  task get_cards: :environment do
    response = BaseService.conn('https://arkhamdb.com/').get('/api/public/cards/')
    BaseService.parse_json(response)
  end
end