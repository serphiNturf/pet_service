# frozen_string_literal: true

FactoryBot.define do
  factory :owners_pets do
    pet
    owner
  end
end
