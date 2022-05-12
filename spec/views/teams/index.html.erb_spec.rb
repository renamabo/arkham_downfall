require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        name: "Name",
        campaign: "Campaign",
        active: false
      ),
      Team.create!(
        name: "Name",
        campaign: "Campaign",
        active: false
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Campaign".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
