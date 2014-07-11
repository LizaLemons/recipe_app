class User < ActiveRecord::Base
  has_secure_password
  has_many :collections, dependent: :destroy 
  has_many :recipes, through: :collections

  validates :username, presence: true
  validates :username, uniqueness: true
end
