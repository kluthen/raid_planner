json.array!(@roles) do |role|
  json.extract! role, :id, :event_template_id, :event_id, :required_players, :comment, :role_type_id
  json.url role_url(role, format: :json)
end
