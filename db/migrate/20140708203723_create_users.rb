class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string(:username)
      t.string(:first_name)
      t.string(:last_name)
      t.string(:gender)
      t.integer(:age)
      t.string(:city)
      t.string(:state_abr)
      t.text(:photo_url)
      t.string(:password_digest)
      
      t.timestamps
    end
  end
end
