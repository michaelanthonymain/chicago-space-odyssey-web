class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string  :name
      t.text    :description
      t.string  :url
      t.string  :image_path
      t.integer :location_id
      t.timestamps
    end
  end
end
