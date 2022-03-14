# frozen_string_literal: true
class OwnersController < ApplicationController
  before_action :set_owner, only: [:show, :destroy]

# GET /owners
  def index
    @owners = Owner.all
    return owner_by_contact_number if params[:contact_number].present?
  end

# GET /owners/:id
  def show
    @owner
  end

  # POST /owners
  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      render json: @owner, status: :created, location: @owner
    else
      render json: @owner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /owners/:id
  def destroy
    @owner.destroy
  end

  def owner_by_contact_number
    @owner_contact_number = Owner.where(contact_number: params[:contact_number])
    if @owner_contact_number.present?
      render json: @owner_contact_number
    else
      render json: payload
    end
  end

  private

    def payload
      {
          message: "This owner does not exist"
      }.compact
    end

    def set_owner
      @owner = Owner.where(id: params[:id]).first
    end

    def owner_params
      params.require(:owner).permit(:first_name, :last_name, :contact_number)
    end
end