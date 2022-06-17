# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'card facade', :vcr do
  it 'can retrieve all cards' do
    cards = CardFacade.all_cards

    expect(cards).to be_an(Array)
    expect(cards.first).to be_a(Card)
    expect(cards.first.name).to be_a(String)
    expect(cards.count).to eq(1361)
  end
end
