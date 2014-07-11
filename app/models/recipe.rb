class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :collections
  has_many :users, through: :collection

  validates :title, :ingredients, presence: true
end
