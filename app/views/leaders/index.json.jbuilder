json.array!(@leaders) do |leader|
  json.extract! leader, :id, :user_id, :event_id
  json.url leader_url(leader, format: :json)
end
