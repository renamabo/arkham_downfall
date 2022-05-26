require "rails_helper"

RSpec.describe "user registration page" do
  before :each do
    visit registration_path
    @user1 = User.create(username: "gabrellus", password: "password")
  end

    it "can display registration form" do
      expect(page).to have_content("Username")
      expect(page).to have_content("Password")
      expect(page).to have_content("Password confirmation")
      expect(page).to have_content("Register")
      expect(page).to have_content("Already Registered? Log In Here!")
    end

    it "can register a user given valid credentials" do
      fill_in :username, with: "stella"
      fill_in :password, with: "fail"
      fill_in :password_confirmation, with: "fail"

      click_on "Register"

      user2 = User.last

      expect(current_path).to eq(user_dashboard_path(user2.id))
      expect(page).to have_content("Successfully created account!")
    end

    it "can redirect back to registration page with error if password does not match" do
        fill_in :username, with: "bbthecat"
        fill_in :password, with: "imhungry"
        fill_in :password_confirmation, with: "jk"

        click_on "Register"

        expect(current_path).to eq(registration_path)
        expect(page).to have_content("Passwords do not match.")
    end

    it 'can redirect back to registration page with error if username exists' do
        fill_in :username, with: "gabrellus"
        fill_in :password, with: "fake"
        fill_in :password_confirmation, with: "fake"

        click_on "Register"

        expect(current_path).to eq(registration_path)
        expect(page).to have_content("Unable to create account. Username taken.")
    end
end
