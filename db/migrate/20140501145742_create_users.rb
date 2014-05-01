class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.integer :uid
      t.string :name
      t.string :username
      t.string :image_string
      t.string :location
      t.string :token
      t.string :secret
      t.timestamps
    end
  end
end
