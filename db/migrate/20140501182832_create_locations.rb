class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :beacon_id
      t.float  :latitude
      t.float  :longitude
      t.string :url
      t.timestamps
    end
  end
end
