json.pets do
  json.array! @pets do |pets|
    json.id pets.id
    json.name pets.name
    json.gender pets.gender
    json.species pets.species
  end
end