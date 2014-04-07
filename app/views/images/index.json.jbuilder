json.array!(@images) do |image|
  json.extract! image, :id, :title, :user
  json.url image_url(image, format: :json)
end
