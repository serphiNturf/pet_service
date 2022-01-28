if @owner_by_contact_number.present?
  json.extract! @owner_by_contact_number,
                :full_name,
                :contact_number
# elsif @owner_by_contact_number.nil? && @owners.nil?
#   json.error_message "This owner does not exist"
else @owners.present?
  json.array! @owners, partial: 'owners/owner', as: :owner
end
