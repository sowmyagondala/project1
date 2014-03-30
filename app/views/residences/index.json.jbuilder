json.array!(@residences) do |residence|
  json.extract! residence, :id, :country, :name, :code
  json.url residence_url(residence, format: :json)
end
