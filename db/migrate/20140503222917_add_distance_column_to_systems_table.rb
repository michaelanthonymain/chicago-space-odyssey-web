class AddDistanceColumnToSystemsTable < ActiveRecord::Migration
  def change
    add_column :systems, :distance, :integer
  end
end
