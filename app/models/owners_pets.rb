# == Schema Information
#
# Table name: owners_pets
#
#  owner_id :integer          not null
#  pet_id   :integer          not null
#
class OwnersPets < ApplicationRecord
  belongs_to :owner
  belongs_to :pet

  validates :owner_id, presence: true
  validates :pet_id, presence: true
end

