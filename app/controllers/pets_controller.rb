# frozen_string_literal: true
class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.where(id: params[:id]).first
  end
end
