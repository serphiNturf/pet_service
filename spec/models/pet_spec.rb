require 'rails_helper'

RSpec.describe Pet, type: :model do
  let (:pet) {FactoryBot.create(:pet)}

  it "Pet should have a name" do
    expect(pet.name).to eq("Lulu")
  end

  it "Pet should have a gender" do
    expect(pet.gender).to eq("Female")
  end

  it "Pet should have a species" do
    expect(pet.species).to eq("Cat")
  end

end
