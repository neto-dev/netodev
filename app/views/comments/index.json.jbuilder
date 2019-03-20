json.array!(@comments) do |comment|
  json.extract! comment, :id, :author, :email, :content, :publication_id
  json.url comment_url(comment, format: :json)
end
