# frozen_string_literal: true
class OwnersController < ApplicationController
# GET /owners
  def index
    @owner_by_contact_number = Owner.where(contact_number: params[:contact_number]).first
    @owners = Owner.all
  end

# GET /owners/1
  def show
    @owner = Owner.where(id: params[:id]).first
    json.error_message "This owner does not exist"
  end
end



