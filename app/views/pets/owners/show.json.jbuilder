json.partial! 'pets/pet', pet: @pet
json.owners @owners, partial: 'owners/owner', as: :owner