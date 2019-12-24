class UserSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :username 
  # has_manny :channels
  has_many :channels, serializer: ChannelSerializer
end
