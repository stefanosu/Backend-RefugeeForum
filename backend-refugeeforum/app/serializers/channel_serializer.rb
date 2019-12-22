class ChannelSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id , :title, :user_id, :posts
end
