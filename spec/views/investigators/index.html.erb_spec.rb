require 'rails_helper'

RSpec.describe "investigators/index", type: :view do
  before(:each) do
    assign(:investigators, [
      Investigator.create!(
        name: "Name",
        image: "Image",
        deck_link: "Deck Link",
        team: nil
      ),
      Investigator.create!(
        name: "Name",
        image: "Image",
        deck_link: "Deck Link",
        team: nil
      )
    ])
  end

  it "renders a list of investigators" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
    assert_select "tr>td", text: "Deck Link".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
