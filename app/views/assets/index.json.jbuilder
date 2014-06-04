json.array!(@assets) do |asset|
  json.extract! asset, :id, :title
  json.url asset_url(asset, format: :json)
end
