# frozen_string_literal: true
class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :destroy]

  # GET /pets
  def index
    @pets = Pet.all
    return pet_by_name if params[:name].present?
  end

  # GET /pets/:id
  def show
    #@pet = Pet.where(id: params[:id]).first
    @pet
  end

  #GET pet by name
  def pet_by_name
    @pet_by_name = Pet.where(name: params[:name]).first
    if @pet_by_name.present?
      render json: @pet_by_name
    else
      render json: payload
    end
  end

  # POST /pets
  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/:id
  def destroy
    @pet.destroy
  end

 private
  def set_pet
    @pet = Pet.find(params[:id]).first
  end

  def pet_params
    params.require(:pet).permit(:name, :gender, :species)
  end
end

def payload
  {
      message: "This pet does not exist"
  }.compact
end
