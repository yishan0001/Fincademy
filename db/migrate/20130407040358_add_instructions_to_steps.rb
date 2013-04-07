class AddInstructionsToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :intructions, :text
  end
end
