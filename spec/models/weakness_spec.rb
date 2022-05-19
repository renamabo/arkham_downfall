require 'rails_helper'

RSpec.describe Weakness, type: :model do
  describe "relationships" do
    it { should have_many(:investigator_weaknesses) }
    it { should have_many(:investigators).through(:investigator_weaknesses) }
  end
end
