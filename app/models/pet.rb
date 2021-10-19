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

  def animal_type
    return Pet.find(id).species
  end

  def animal_sound
    if animal_type == "Cat"
      return "meow"
    elsif animal_type == "Dog"
      return "arf"
    elsif animal_type == "Bird"
      return "tweet"
    else "unknown"
    end
  end

end
