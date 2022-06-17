# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'user dashboard page' do
  before :each do
    visit registration_path
    fill_in :username, with: 'nico_squeako'
    fill_in :password, with: 'alsomeow'
    fill_in :password_confirmation, with: 'alsomeow'

    click_on 'Register'

    @user = User.last
  end

  it 'can display welcome message' do
    expected = "Welcome, #{@user.username}!"

    expect(page).to have_content(expected)
  end

  it 'can display button to create a new team that can navigate to new team page' do
    expect(page).to have_link('Create A Team')

    click_on 'Create A Team'

    expect(current_path).to eq(new_user_team_path(@user))
  end

  xit 'can display a users teams' do
    within '#team-pane' do
      expect(page).to have_content(@user.team1)
      expect(page).to have_content(@user.team2)
    end
  end
end
