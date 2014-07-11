class Collection < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :recipes, dependent: :delete

  validates :name, :user, presence: true

  def add_recipe(recipe)
    self.recipes.push(recipe) unless self.recipes.include?(recipe)
  end

  def remove_recipe(recipe)
    self.recipes.delete(recipe)
  end

end
