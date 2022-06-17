# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InvestigatorWeakness, type: :model do
  describe 'relationships' do
    it { should belong_to(:investigator) }
    it { should belong_to(:weakness) }
  end
end
