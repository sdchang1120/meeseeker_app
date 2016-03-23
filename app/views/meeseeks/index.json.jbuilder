json.array!(@meeseeks) do |meeseek|
  json.extract! meeseek, :id, :name, :address, :latitude, :longitude
  json.url meeseek_url(meeseek, format: :json)
end
