# frozen_string_literal: true

json.extract! investigator, :id, :name, :image, :deck_link, :team_id, :created_at, :updated_at
json.url investigator_url(investigator, format: :json)
