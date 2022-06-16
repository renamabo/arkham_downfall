require "rails_helper"

RSpec.describe "card facade", :vcr do
    it "can retrieve all cards" do
        cards = CardFacade.all_cards

        expect(cards).to be_an(Array)
        expect(cards.first).to be_a(Card)
    end
end