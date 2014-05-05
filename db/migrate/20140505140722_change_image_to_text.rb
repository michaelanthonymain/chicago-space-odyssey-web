class ChangeImageToText < ActiveRecord::Migration
  def change
    change_column :collections, :image, :text
  end
end
