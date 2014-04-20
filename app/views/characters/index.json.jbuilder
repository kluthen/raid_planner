json.array!(@characters) do |character|
  json.extract! character, :id, :user_id, :ordered, :class_id, :name, :comment
  json.url character_url(character, format: :json)
end
