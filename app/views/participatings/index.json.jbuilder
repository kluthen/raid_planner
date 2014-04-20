json.array!(@participatings) do |participating|
  json.extract! participating, :id, :role_id, :character_id, :pickup_id, :comment
  json.url participating_url(participating, format: :json)
end
