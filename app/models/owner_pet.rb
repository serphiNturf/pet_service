class OwnerPet < ApplicationRecord
  belongs_to :owner
  belongs_to :pet

  validates :owner_id, presence: true
  validates :pet_id, presence: true
end
