require 'rails_helper'

Rails.application.load_tasks

RSpec.describe 'cards service tasks' do
  it 'can call `BaseService` and parse json payload', :vcr do
    array_proc = Rake::Task["cards:get_cards"].invoke
    response = array_proc[0].call
    binding.pry
    expect(response).to be_an(Array)
    expect(response.first).to be_a(Card)
    expect(response.first.name).to eq('Random Basic Weakness')
    expect(response.first.type_code).to eq('treachery')
  end

  # this should be in the model
  it 'exists and has attributes', :vcr do
    card = Card.new(pack_name: 'Edge of the earth', faction_name: 'survivor', code: '09990', name: 'Penguinfriend',
                      subname: 'n/a', text: '[[exhaust]] [[free action]]: Move to a connecting location. On penguinback.', quantity: 2, deck_limit: 2, traits: 'Creature. Ally.', permanent: false, imagesrc: 'www.arkhamdb.com/penguins!')

    expect(card).to be_a(Card)
    expect(card.pack_name).to eq('Edge of the earth')
    expect(card.faction_name).to eq('survivor')
    expect(card.code).to eq(9990)
    expect(card.traits).to eq('Creature. Ally.')
    expect(card.imagesrc).to eq('www.arkhamdb.com/penguins!')
  end
end