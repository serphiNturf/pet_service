# frozen_string_literal: true
module Owners
  class PetsController < ApplicationController
    def show
      @owner = Owner.where(id: params[:id]).first
      @pets = @owner.pets
    end
  end
end
