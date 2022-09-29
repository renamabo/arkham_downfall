# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many(:user_teams) }
    it { should have_many(:teams).through(:user_teams) }
  end

  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:password) }
  end
end
