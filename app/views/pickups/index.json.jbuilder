json.array!(@pickups) do |pickup|
  json.extract! pickup, :id, :role_type_id, :class_id, :name, :comment
  json.url pickup_url(pickup, format: :json)
end
