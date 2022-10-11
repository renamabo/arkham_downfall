require './lib/services/base_service.rb'

namespace :cards do
  desc 'Cards service: connect to ArkhamDB, consumes API and parses json'
  task get_cards: :environment do
    response = BaseService.conn('https://arkhamdb.com/').get('/api/public/cards/')
    raw_data = BaseService.parse_json(response)
    data = self.remove_erroneous_keys(raw_data)
    cards = self.remove_placeholder_and_create_cards(data)
    cards.each do |data|
      Card.create(
        pack_name: data['pack_name'],
        type_code: data['type_code'],
        type_name: data['type_name'],
        subtype_code: data['subtype_code'],
        faction_name: data['faction_name'],
        code: data['code'],
        name: data['name'],
        subname: data['subname'],
        text: data['text'],
        quantity: data['quantity'],
        deck_limit: data['deck_limit'],
        traits: data['traits'],
        flavor: data['flavor'],
        permanent: data['permanent'],
        double_sided: data['double_sided'],
        back_text: data['back_text'],
        back_flavor: data['back_flavor'],
        imagesrc: data['imagesrc'],
        backimagesrc: data['backimagesrc']
      )
    end
    ActiveRecord::Base.connection.reset_pk_sequence!('cards')
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

  def remove_placeholder_and_create_cards(data)
    data.shift
    data.map do |card_data|
      Card.new(card_data)
    end
  end
end