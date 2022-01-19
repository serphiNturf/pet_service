json.owner do
  if @owner.present?
    json.owner do
      json.extract! @owner, :full_name, :contact_number
    end
    json.pets do
      json.array! @owner_pets do |owner_pets|
        json.name owner_pets.name
        json.gender owner_pets.gender
        json.species owner_pets.species
      end
    end
  elsif @owner.present? && !@owner_pets.present?
    json.owner do
      json.extract! @owner, :full_name, :contact_number
    end
  else
    json.error_message "This owner does not exist"
  end
end





