class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 2 }, uniqueness: true
  validates :email, presence: true
  validates :password, presence: true, length: {minimum: 8 }

  has_many :posts
end
