# frozen_string_literal: true

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

  has_and_belongs_to_many :owners

  def animal_sound
    return 'meow' if species == 'Cat'
    return 'arf' if species == 'Dog'
    return 'tweet' if species == 'Bird'

    'unknown'
  end
end
