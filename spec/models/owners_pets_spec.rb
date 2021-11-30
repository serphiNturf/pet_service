# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OwnersPets, type: :model do
  let(:owners_pets) { FactoryBot.create(:owners_pets) }
  let(:owner) { owners_pets.owner }
  let(:pet) { owners_pets.pet }

  it 'should have an owner_id' do
    expect(owners_pets.owner_id).to eq(owner.id)
  end

  it 'should have a pet_id' do
    expect(owners_pets.pet_id).to eq(pet.id)
  end
end
