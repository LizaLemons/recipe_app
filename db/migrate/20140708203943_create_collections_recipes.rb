class CreateCollectionsRecipes < ActiveRecord::Migration
  def change
    create_table :collections_recipes do |t|

      t.belongs_to :collection
      t.belongs_to :recipe

      t.timestamps
    end
  end
end
