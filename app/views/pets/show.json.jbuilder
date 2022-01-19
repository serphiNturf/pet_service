#not sure how to get this setup
# need to find an example of id/param

#json.pet_and_owner do
  if @pet_owners.present?
    json.pet do
      json.name @pet.name
      json.gender @pet.gender
      json.species @pet.species
    end
    json.owners do
      json.array! @pet_owners do |pet_owners|
        json.name pet_owners.first_name + ' ' + pet_owners.last_name
        json.contact_number pet_owners.contact_number
      end
    end
  elsif @pet.present? && !@pet_owners.present?
    json.pet do
      json.name @pet.name
      json.gender @pet.gender
      json.species @pet.species
    end
  else json.error_message "This pet does not exist"
  # elsif !@pet.present? && !@pet_owners.present?
  #   json.error_message "This pet does not exist"
  end
