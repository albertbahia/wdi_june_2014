json.array!(@grumbles) do |grumble|
  json.extract! grumble, :id, :author, :content, :title, :image, :avatar
  json.url grumble_url(grumble, format: :json)
end
