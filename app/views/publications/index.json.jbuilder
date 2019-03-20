json.array!(@publications) do |publication|
  json.extract! publication, :id, :title, :image, :preview, :article, :category_id, :user_id
  json.url publication_url(publication, format: :json)
end
