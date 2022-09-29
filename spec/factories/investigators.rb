# frozen_string_literal: true

FactoryBot.define do
  factory :investigator do
    name { 'MyString' }
    image { 'MyString' }
    deck_link { 'MyString' }
    team { nil }
  end
end
