json.array!(@bills) do |bill|
  json.extract! bill, :id, :total
  json.url bill_url(bill, format: :json)
end
