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

  it "should not have an owner yet" do
    expect(pet.owners).to be_empty
    #expect(pet.owners).to eq([])
  end

  context "when a pet has an owner" do
    let (:owner) {FactoryBot.create(:owner)}
    before do
      OwnersPets.create(pet_id: pet.id, owner_id: owner.id)
    end
    it "should have an owner" do
      expect(pet.owners).to be_empty
    end
  end

  context '#animal_sound' do
    it "should return the animal sound meow" do
      expect(pet.animal_sound).to eq("meow")
    end

    context "when species is dog" do
      before do
        pet.update(species: 'Dog')
      end

      it "should return the animal sound arf" do
        expect(pet.animal_sound).to eq("arf")
      end
    end

    context "when species is bird" do
      before do
        pet.update(species: 'Bird')
      end

      it "should return the animal sound tweet" do
        expect(pet.animal_sound).to eq("tweet")
      end
    end

    context "when the species is hippo" do
      before do
        pet.update(species: 'Hippo')
      end

      it "should return the animal sound unknown" do
        expect(pet.animal_sound).to eq("unknown")
      end
    end
  end
end
