require 'rails_helper'

RSpec.describe PetsController, type: :controller do

  let(:valid_attributes) {
    FactoryBot.attributes_for(:pet)
  }

  let(:invalid_attributes) {
    { name: 1208 }
  }

  let :pet do
    FactoryBot.create(:pet)
  end

  let :headers do
    { 'Accept' => 'application/json' }
  end

  before do
    request.headers.merge! headers
  end

  #index
  describe "GET #index" do
    it "returns a success response" do
      pet = Pet.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  #show
  describe "GET #show" do
    it "returns a success response" do
      pet = Pet.create! valid_attributes
      get :show, params: {id: pet.to_param}
      expect(response).to be_successful
    end
  end

  #create
  describe "POST #create" do
    context "with valid params" do
      it "creates a new Pet" do
        expect {
          post :create, params: {pet: valid_attributes}
        }.to change(Pet, :count).by(1)
      end

      it "renders a JSON response with the new Pet" do

        post :create, params: {pet: valid_attributes}
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
        expect(response.location).to eq(pet_url(Pet.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new pet" do

        post :create, params: {pet: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  #delete
  describe "DELETE #destroy" do
    it "destroys the requested pet" do
      pet = Pet.create! valid_attributes
      expect {
        delete :destroy, params: {id: pet.to_param}
      }.to change(Pet, :count).by(-1)
    end
  end
end