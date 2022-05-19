require 'rails_helper'

RSpec.describe Team, type: :model do
  describe "relationships" do
    it { should have_many(:user_teams) }
    it { should have_many(:users).through(:user_teams) }
  end
end
