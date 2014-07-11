class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string(:title)
      t.text(:ingredients)
      t.text(:directions)
      t.text(:image_url)
      t.text(:yummly_id)

      t.timestamps
    end
  end
end
