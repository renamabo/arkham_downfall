require './lib/services/base_service.rb'
require './app/poros/card.rb'

namespace :cards do
  desc 'Cards service: connect to ArkhamDB, consumes API and parses json'
  # Services make calls to remote APIs
  # Gets all cards from ArkhamDB.com.'
  task get_cards: :environment do
    response = BaseService.conn('https://arkhamdb.com/').get('/api/public/cards/')
    data = BaseService.parse_json(response)
    self.create_cards(data)
    binding.pry
  end

  # desc 'Cards service: invoke get_cards task, iterate over data and return individual card objects.'
  # task create_cards: :environment do
  #   task_data = Rake::Task["cards:get_cards"].execute
  #   data = task_data[0].call
  #   binding.pry
  #   data.map do |card_data| 
  #     Card.new(card_data)
  #   end
  # end
  private

  def self.create_cards(parsed_data)
    parsed_data.map do |card_data|
      Card.new(card_data)
    end
  end
end