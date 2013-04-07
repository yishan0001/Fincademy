class AddCourseIdToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :course_id, :integer
  end
end
