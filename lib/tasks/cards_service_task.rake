require './lib/services/base_service.rb'

namespace :cards do
  desc 'Cards service: connect to ArkhamDB, consumes API and parses json'
  # Services make calls to remote API
  # Gets all cards from ArkhamDB.com.'
  task get_cards: :environment do
    response = BaseService.conn('https://arkhamdb.com/').get('/api/public/cards/')
    raw_data = BaseService.parse_json(response)
    data = self.remove_erroneous_keys(raw_data)
    self.create_cards(data)
  end


  private
  
  def remove_erroneous_keys(data)
    data.map do |card_data|
      card_data.map do |k, v|
        if !Card::CARD_VARS.include?(k)
          card_data.delete(k)
        end
      end
    end
    data
  end

  def create_cards(refined_data)
    refined_data.map do |card_data|
      Card.new(card_data)
    end
  end
end