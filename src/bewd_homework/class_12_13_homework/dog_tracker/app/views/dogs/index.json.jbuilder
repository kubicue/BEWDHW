json.array!(@dogs) do |dog|
  json.extract! dog, :id, :photo, :name, :breed, :color, :size, :age
  json.url dog_url(dog, format: :json)
end
