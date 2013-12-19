json.array!(@events) do |event|
  json.extract! event, :id, :lat, :long, :venue, :url, :city
  json.url event_url(event, format: :json)
end

