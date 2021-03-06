class User < ApplicationRecord
  has_many :channels
  has_many :posts
  has_many :comments

  has_secure_password

  validates :username, uniqueness: true
end
