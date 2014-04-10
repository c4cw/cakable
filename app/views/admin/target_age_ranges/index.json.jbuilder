json.array!(@target_age_ranges) do |target_age_range|
  json.extract! target_age_range, :id, :target_age_range
  json.url target_age_range_url(target_age_range, format: :json)
end
