json.array!(@character_specialisations) do |character_specialisation|
  json.extract! character_specialisation, :id, :character_id, :role_type_id, :ordered, :comment
  json.url character_specialisation_url(character_specialisation, format: :json)
end
