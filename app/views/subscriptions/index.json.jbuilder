json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :type, :name, :cost, :package_id
  json.url subscription_url(subscription, format: :json)
end
