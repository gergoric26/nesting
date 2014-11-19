json.array!(@downs) do |down|
  json.extract! down, :id, :number
  json.url down_url(down, format: :json)
end
