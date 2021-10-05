# == Schema Information
#
# Table name: pets
#
#  id         :integer          not null, primary key
#  name       :string
#  gender     :string
#  species    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pet < ApplicationRecord
  validates :name, presence: true
  validates :gender, presence: true
  validates :species, presence: true

end
