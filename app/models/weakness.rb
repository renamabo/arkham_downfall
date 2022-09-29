# frozen_string_literal: true

class Weakness < ApplicationRecord
  has_many :investigator_weaknesses
  has_many :investigators, through: :investigator_weaknesses
end
