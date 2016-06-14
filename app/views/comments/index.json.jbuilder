json.array!(@comments) do |comment|
  json.extract! comment, :id, :link_id, :body, :user
  json.url comment_url(comment, format: :json)
end
