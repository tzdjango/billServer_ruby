json.array!(@packages) do |package|
  json.extract! package, :id, :total, :bill_id
  json.url package_url(package, format: :json)
end
