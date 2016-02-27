json.array!(@statements) do |statement|
  json.extract! statement, :id, :generated, :due, :bill_id
  json.url statement_url(statement, format: :json)
end
