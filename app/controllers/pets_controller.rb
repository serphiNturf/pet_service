# frozen_string_literal: true

class PetsController < ApplicationController
  def index
    @pets = Pet.all
    #render json: @pets
  end


  def show
    binding.pry
    @pet = Pet.where(id: params[:id]).first
    @pet_owners = Pet.where(id: params[:id]).first.owners
    #@pet_owners = Owner.where(id: @pet[:id])
    # if @pet.present?
    #   render json: @pet
    # else
    #   render json: { errors: 'This pet does not exist' }, status: :not_found
    # end
  end
end
