# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe 'card facade' do
#   it 'can retrieve all cards', :vcr do
#     cards = CardFacade.all_cards

#     expect(cards).to be_an(Array)
#     expect(cards.first).to be_a(Card)
#     expect(cards.first.name).to be_a(String)
#   end

#   it 'can retrieve only investigators', :vcr do
#     investigators = CardFacade.sort_investigators
    
#     expect(investigators).to be_an(Array)
#     expect(investigators.first).to be_a(Card)
#     expect(investigators.first.type_code).to eq("investigator")
#     expect(investigators.first.type_code).to_not eq("treachery")
#     expect(investigators.last.type_code).to eq("investigator")
#     expect(investigators.last.type_code).to_not eq("treachery")
#   end

#   it 'can retrieve only weaknesses', :vcr do
#     weaknesses = CardFacade.sort_weaknesses
#     binding.pry
#     expect(weaknesses).to be_an(Array)
#     expect(weaknesses.first).to be_a(Card)
#     expect(weaknesses.first.type_code).to eq("treachery")
#     expect(weaknesses.first.subtype_code).to eq("basicweakness")
#     expect(weaknesses.last.type_code).to eq("treachery")
#     expect(weaknesses.last.subtype_code).to eq("basicweakness")
#   end
# end
