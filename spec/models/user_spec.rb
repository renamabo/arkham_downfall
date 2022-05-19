require 'rails_helper'

RSpec.describe User, type: :model do
  describe "relationships" do
    it { should have_many(:user_teams) }
    it { should have_many(:teams).through(:user_teams) }
  end
end
