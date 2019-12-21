class ChannelSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :user_id, :posts
end
