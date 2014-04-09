json.array!(@occupations) do |occupation|
  json.extract! occupation, :id, :occupation
  json.url occupation_url(occupation, format: :json)
end
