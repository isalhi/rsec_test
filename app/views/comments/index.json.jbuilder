json.array!(@comments) do |comment|
  json.extract! comment, :id, :id_creator, :id_activity, :message
  json.url comment_url(comment, format: :json)
end
