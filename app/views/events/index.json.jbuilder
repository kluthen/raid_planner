json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :start_time, :meet_time, :players_required
  json.url event_url(event, format: :json)
end
