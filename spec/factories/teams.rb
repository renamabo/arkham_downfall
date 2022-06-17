# frozen_string_literal: true

FactoryBot.define do
  factory :team do
    name { 'MyString' }
    campaign { 'MyString' }
    active { false }
  end
end
