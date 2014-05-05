class RemoveImagePathFromCollections < ActiveRecord::Migration
  def change
    remove_column :collections, :image_path
  end
end
