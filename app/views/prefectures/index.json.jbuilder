json.array!(@prefectures) do |prefecture|
  json.extract! prefecture, :id, :prefecture
  json.url prefecture_url(prefecture, format: :json)
end
