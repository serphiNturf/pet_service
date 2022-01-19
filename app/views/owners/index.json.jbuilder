json.owners do
  if @owner_by_contact_number.present?
    json.extract! @owner_by_contact_number,
                  :full_name,
                  :contact_number
  else @owners.present?
      json.array! @owners do |owners|
        json.id owners.id
        json.name owners.first_name + ' ' + owners.last_name
        json.created_at owners.created_at
        json.updated_at owners.updated_at
      end
  end
end