# frozen_string_literal: true

class InvestigatorWeakness < ApplicationRecord
  belongs_to :investigator
  belongs_to :weakness
end
