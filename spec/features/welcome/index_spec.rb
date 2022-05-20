require "rails_helper"

RSpec.describe "welcome page" do
  before :each do
    visit root_path
    @user = User.create(username: "gabrellus", password: "password")
  end

  it "can display welcome information" do
    expected = "A custom weakness generator for your Arkham teams"

    expect(page).to have_content("Welcome to Arkham Downfall!")
    expect(page).to have_content(expected)
    expect(page).to have_button("Log In")
    expect(page).to have_link("Register for an Account")
  end

  xit "can redirect to user log in page" do
    fill_in "username", with: @user.username
    fill_in "password", with: @user.password

    click_on "Log In"

    expect(current_path).to eq(user_dashboard_path(@user.id))
    expect(page).to have_content("Successfully logged in!")
  end

  it "can redirect to registration page" do
    click_link "Register for an Account"

    expect(current_path).to eq(registration_path)
  end

  describe "can redirect back to login page with error message" do
    it "when given partial login credentials" do
      fill_in :username, with: @user.username
      fill_in :password, with: ""
      
      click_button "Log In"

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Unable to log in, please try again.")
    end

    it "when given an invalid password" do
      fill_in :username, with: @user.username
      fill_in :password, with: "slothsinspace42"

      click_button "Log In"

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Unable to log in, please try again.")
    end
  end
end
