class AddCellLocationToStep < ActiveRecord::Migration
  def change
    add_column :steps, :cell_location, :string
  end
end
