json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :title, :content, :user_id
  json.url announcement_url(announcement, format: :json)
end
