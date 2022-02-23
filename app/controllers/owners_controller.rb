# frozen_string_literal: true
class OwnersController < ApplicationController
# GET /owners
  def index
    return owner_by_contact_number if params[:contact_number].present?
    @owners = Owner.all
  end

# GET /owners/1
  def show
    @owner = Owner.where(id: params[:id]).first
  end

  def owner_by_contact_number
    @owner = Owner.where(contact_number: params[:contact_number])
    if @owner.present?
      render json: @owner
    else
      render json: payload
    end
  end
end

private
def payload
  {
      message: "This owner does not exist"
  }.compact
end



