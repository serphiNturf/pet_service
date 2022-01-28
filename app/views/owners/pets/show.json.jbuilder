json.partial! 'owners/owner', owner: @owner
json.pets @pets, partial: 'pets/pet', as: :pet