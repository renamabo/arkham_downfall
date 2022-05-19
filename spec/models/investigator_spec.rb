require 'rails_helper'

RSpec.describe Investigator, type: :model do
  describe "relationships" do
    it { should belong_to(:team) }
    it { should have_many(:investigator_weaknesses) }
    it { should have_many(:weaknesses).through(:investigator_weaknesses) }
  end
end
