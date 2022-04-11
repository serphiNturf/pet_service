# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OwnersController, type: :controller do
  let(:valid_attributes) {
    FactoryBot.attributes_for(:owner)
  }

  let :owner do
    FactoryBot.create(:owner)
  end

  # let :owner_taken_contact_number do
  #   FactoryBot.create(:owner_taken_contact_number)
  # end

  let(:valid_attributes) {
    FactoryBot.attributes_for(:owner)
  }

  let(:invalid_attributes) {
    { contact_number: '2065557878' }
  }

  let :owner do
    FactoryBot.create(:owner)
  end

  let :headers do
    { 'Accept' => 'application/json' }
  end

  before do
    request.headers.merge! headers
  end

  let(:invalid_contact_number) {
    { contact_number: '2067798313' }
  }

  let(:error_message) {
    {
        message: 'This owner does not exist'
    }
  }

  #index
  describe "GET #index" do
    it "returns a success response" do
      owner = Owner.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end


  #show
  describe "GET #show" do
    it "returns a success response" do
      owner = Owner.create! valid_attributes
      get :show, params: {id: owner.to_param}
      expect(response).to be_successful
    end
  end

  #create
  describe "POST #create" do
    context "with valid params" do
      it "creates a new Owner" do
        expect {
          post :create, params: {owner: valid_attributes}
        }.to change(Owner, :count).by(1)
      end

      it "renders a JSON response with the new Owner" do

        post :create, params: {owner: valid_attributes}
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
        expect(response.location).to eq(owner_url(Owner.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new owner" do

        post :create, params: {owner: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end
end