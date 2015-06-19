json.array!(@fastfoods) do |fastfood|
  json.extract! fastfood, :id, :name
  json.url fastfood_url(fastfood, format: :json)
end
