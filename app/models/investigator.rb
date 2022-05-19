class Investigator < ApplicationRecord
  belongs_to :team
  has_many :investigator_weaknesses
  has_many :weaknesses, through: :investigator_weaknesses
end
