json.array!(@call_charges) do |call_charge|
  json.extract! call_charge, :id, :total, :bill_id
  json.url call_charge_url(call_charge, format: :json)
end
