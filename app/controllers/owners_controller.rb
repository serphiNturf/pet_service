# frozen_string_literal: true

class OwnersController < ApplicationController
# GET /owners
  def index
    @owner_by_contact_number = Owner.where(contact_number: params[:contact_number]).first
    @owners = Owner.all
    if @owner_by_contact_number.present?
      render json:@owner_by_contact_number
    else @owners.present?
      render json: @owners
    end
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

