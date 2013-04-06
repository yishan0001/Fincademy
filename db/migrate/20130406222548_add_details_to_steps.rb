class AddDetailsToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :description, :text
    add_column :steps, :answer, :integer
  end
end
