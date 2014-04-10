json.array!(@cake_categories) do |cake_category|
  json.extract! cake_category, :id, :category_name
  json.url cake_category_url(cake_category, format: :json)
end
