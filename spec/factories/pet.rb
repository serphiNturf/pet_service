# frozen_string_literal: true

FactoryBot.define do
  factory :pet do
    name { 'Lulu' }
    gender { 'Female' }
    species { 'Cat' }
  end
end
