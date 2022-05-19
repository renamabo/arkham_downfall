require 'rails_helper'

RSpec.describe UserTeam, type: :model do
  describe "relationships" do
    it { should belong_to(:user) }
    it { should belong_to(:team) }
  end
end
