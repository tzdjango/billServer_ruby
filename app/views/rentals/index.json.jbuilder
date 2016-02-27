json.array!(@rentals) do |rental|
  json.extract! rental, :id, :title, :cost, :skyStore_id
  json.url rental_url(rental, format: :json)
end
