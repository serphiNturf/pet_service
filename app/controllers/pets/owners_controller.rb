# frozen_string_literal: true
module Pets
  class OwnersController < ApplicationController
    def show
      @pet = Pet.where(id: params[:id]).first
      @owners = @pet.owners
    end
  end
end