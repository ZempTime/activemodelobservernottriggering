json.array!(@vacation_spots) do |vacation_spot|
  json.extract! vacation_spot, :id, :name
  json.url vacation_spot_url(vacation_spot, format: :json)
end
