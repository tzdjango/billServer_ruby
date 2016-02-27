json.array!(@periods) do |period|
  json.extract! period, :id, :from, :to, :statement_id
  json.url period_url(period, format: :json)
end
