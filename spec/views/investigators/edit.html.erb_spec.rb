require 'rails_helper'

RSpec.describe "investigators/edit", type: :view do
  before(:each) do
    @investigator = assign(:investigator, Investigator.create!(
      name: "MyString",
      image: "MyString",
      deck_link: "MyString",
      team: nil
    ))
  end

  it "renders the edit investigator form" do
    render

    assert_select "form[action=?][method=?]", investigator_path(@investigator), "post" do

      assert_select "input[name=?]", "investigator[name]"

      assert_select "input[name=?]", "investigator[image]"

      assert_select "input[name=?]", "investigator[deck_link]"

      assert_select "input[name=?]", "investigator[team_id]"
    end
  end
end
