class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :text, :title, :url, :comments
end
