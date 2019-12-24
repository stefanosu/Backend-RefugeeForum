class PostSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :text, :title, :url, :comments
  # has_many :comments, serializer: CommentSerializer
end
