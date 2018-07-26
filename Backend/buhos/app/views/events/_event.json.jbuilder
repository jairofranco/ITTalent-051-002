json.extract! event, :id, :eventDate, :description, :theme, :tags, :created_at, :updated_at
json.url event_url(event, format: :json)
