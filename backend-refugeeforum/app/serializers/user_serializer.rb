class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :channels 
  # has_many :channels
end
