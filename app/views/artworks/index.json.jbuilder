json.array!(@artworks) do |artwork|
  json.extract! artwork, :title, :artist_id
  json.url artwork_url(artwork, format: :json)
end