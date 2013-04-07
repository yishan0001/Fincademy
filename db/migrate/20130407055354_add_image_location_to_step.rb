class AddImageLocationToStep < ActiveRecord::Migration
  def change
    add_column :steps, :image_location, :string
  end
end
