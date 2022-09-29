# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :user_teams
  has_many :users, through: :user_teams
  has_many :investigators
end
