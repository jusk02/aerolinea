json.array!(@trips) do |trip|
  json.extract! trip, :id, :plane_id, :route_id, :pilot_id
  json.url trip_url(trip, format: :json)
end
