require 'rails_helper'

RSpec.describe "investigators/show", type: :view do
  before(:each) do
    @investigator = assign(:investigator, Investigator.create!(
      name: "Name",
      image: "Image",
      deck_link: "Deck Link",
      team: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Deck Link/)
    expect(rendered).to match(//)
  end
end
