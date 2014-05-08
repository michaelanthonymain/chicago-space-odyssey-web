class AddPaperclipImagesToCollections < ActiveRecord::Migration
  def change
    add_attachment :collections, :image
  end
end
