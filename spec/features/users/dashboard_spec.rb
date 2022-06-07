require "rails_helper"

RSpec.describe "user dashboard page" do
  before :each do
    visit registration_path
    fill_in :username, with: "nicosqueako"
    fill_in :password, with: "alsomeow"
    fill_in :password_confirmation, with: "alsomeow"

    click_on "Register"

    @user = User.last
  end

  it "can display welcome message" do

    expected = "Welcome, #{@user.username}!"

    expect(page).to have_content(expected)  
  end


end
