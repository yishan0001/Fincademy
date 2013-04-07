class Step < ActiveRecord::Base
  belongs_to :course
  attr_accessible :description, :answer, :course_id
end
