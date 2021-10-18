require 'rails_helper'

RSpec.describe Owner, type: :model do
  let (:owner) {FactoryBot.create(:owner)}

  it "Owner should have a first name" do
    expect(owner.first_name).to eq("James")
  end

  it "Owner should have a last name" do
    expect(owner.last_name).to eq("Carter")
  end

  it "Owner should have a phone number" do
    expect(owner.contact_number).to eq("2065557878")
  end

end
