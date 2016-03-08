json.array!(@planes) do |plane|
  json.extract! plane, :id, :numero, :modelo
  json.url plane_url(plane, format: :json)
end
