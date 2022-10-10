require 'rails_helper'

Rails.application.load_tasks

RSpec.describe 'cards service tasks' do
  it 'can call `BaseService` and parse json payload', :vcr do
    array_proc = Rake::Task['cards:get_cards'].invoke
    card_update = array_proc[0].call
    response = card_update[0]

    expect(response).to be_an(Array)
    expect(response.first).to be_a(Card)
    expect(response.first.name).to eq('Roland Banks')
    expect(response.first.type_code).to eq('investigator')
    expect(Card::CARDS[0].first.code).to eq(1001)
  end
end