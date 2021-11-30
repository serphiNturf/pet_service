# frozen_string_literal: true

class OwnersController < ApplicationController
  # GET /owners
  def index
    @owners = Owner.all
    render json: @owners
  end

  # GET /owners/1
  def show
    @owner = Owner.where(id: params[:id]).first
    if @owner.present?
      render json: @owner
    else
      render json: { errors: 'This owner does not exist' }, status: :not_found
    end
  end
end
