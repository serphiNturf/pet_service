# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Owner, type: :model do
  let(:owner) { FactoryBot.create(:owner) }

  it 'should have a first name' do
    expect(owner.first_name).to eq('James')
  end

  it 'should have a last name' do
    expect(owner.last_name).to eq('Carter')
  end

  it 'should have a phone number' do
    expect(owner.contact_number).to eq('2065557878')
  end

  context '#full_name' do
    it 'should should have a first name and last name' do
      expect(owner.full_name).to eq('James Carter')
    end
  end
end
