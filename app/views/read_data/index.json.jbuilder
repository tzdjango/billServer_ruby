json.array!(@read_data) do |read_datum|
  json.extract! read_datum, :id, :data
  json.url read_datum_url(read_datum, format: :json)
end
