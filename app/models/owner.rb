class Owner < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :contact_number, presence: true, uniqueness: true

  def full_name
    first_name + " " + last_name
  end
end
