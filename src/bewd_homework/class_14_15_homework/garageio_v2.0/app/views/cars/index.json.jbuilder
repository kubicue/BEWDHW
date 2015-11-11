json.array!(@cars) do |car|
  json.extract! car, :id, :year, :make, :trim, :car_model, :color, :engine, :transmision, :photo, :car_value, :date_purchase
  json.url car_url(car, format: :json)
end
