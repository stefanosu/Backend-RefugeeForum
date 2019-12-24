class ChannelSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :title, :user_id, :posts
  # has_many :posts, serializer: PostSerializer
end
