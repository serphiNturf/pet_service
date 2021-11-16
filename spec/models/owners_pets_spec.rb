require 'rails_helper'

RSpec.describe OwnersPets, type: :model do
  let (:owner) {FactoryBot.create(:owner)}
  let (:pet) {FactoryBot.create(:pet)}
  let (:owners_pets) {OwnersPets.create(pet_id: pet.id, owner_id: owner.id)}

  it "should have an owner_id" do
    expect(owners_pets.owner_id).to eq(owner.id)
  end

  it "should have a pet_id" do
    expect(owners_pets.pet_id).to eq(pet.id)
  end
end