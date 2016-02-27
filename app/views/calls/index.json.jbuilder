json.array!(@calls) do |call|
  json.extract! call, :id, :called, :duration, :cost, :callCharges_id
  json.url call_url(call, format: :json)
end
