# == Schema Information
#
# Table name: owners
#
#  id             :integer          not null, primary key
#  first_name     :string
#  last_name      :string
#  contact_number :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Owner < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :contact_number, presence: true, uniqueness: true

  has_and_belongs_to_many :pets

  def full_name
    first_name + " " + last_name
  end
end
