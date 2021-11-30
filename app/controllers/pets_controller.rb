# frozen_string_literal: true

class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render json: @pets
  end

  def show
    @pet = Pet.where(id: params[:id]).first
    if @pet.present?
      render json: @pet
    else
      render json: { errors: 'This pet does not exist' }, status: :not_found
    end
  end
end
