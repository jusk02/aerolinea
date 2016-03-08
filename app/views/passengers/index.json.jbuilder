json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :name, :lastname, :tiket_number, :identification
  json.url passenger_url(passenger, format: :json)
end
