json.array!(@hooplahs) do |hooplah|
  json.extract! hooplah, :id, :vacation_spot_id, :description
  json.url hooplah_url(hooplah, format: :json)
end
