# frozen_string_literal: true

class User < ApplicationRecord
  has_many :user_teams
  has_many :teams, through: :user_teams

  validates :username, uniqueness: true, presence: true

  has_secure_password
end
