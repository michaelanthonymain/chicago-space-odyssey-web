class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.text       :text
      t.string     :image_path
      t.belongs_to :location
      t.belongs_to :user
      t.timestamps
    end
  end
end
