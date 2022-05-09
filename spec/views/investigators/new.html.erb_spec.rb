require 'rails_helper'

RSpec.describe "investigators/new", type: :view do
  before(:each) do
    assign(:investigator, Investigator.new(
      name: "MyString",
      image: "MyString",
      deck_link: "MyString",
      team: nil
    ))
  end

  it "renders new investigator form" do
    render

    assert_select "form[action=?][method=?]", investigators_path, "post" do

      assert_select "input[name=?]", "investigator[name]"

      assert_select "input[name=?]", "investigator[image]"

      assert_select "input[name=?]", "investigator[deck_link]"

      assert_select "input[name=?]", "investigator[team_id]"
    end
  end
end
