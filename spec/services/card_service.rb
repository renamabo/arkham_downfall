# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'card service', :vcr do
  it 'can get all cards' do
    response = CardService.get_cards

    expect(response).to be_an(Array)
    expect(response.first).to have_key(:pack_code)
    expect(response.first).to have_key(:type_code)
    expect(response.first).to have_key(:faction_code)
    expect(response.first).to have_key(:name)
    expect(response.first).to have_key(:text)
  end
end
