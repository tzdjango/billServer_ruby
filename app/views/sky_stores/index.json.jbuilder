json.array!(@sky_stores) do |sky_store|
  json.extract! sky_store, :id, :total, :bill_id
  json.url sky_store_url(sky_store, format: :json)
end
