class Course < ActiveRecord::Base
  attr_accessible :title, :steps_attributes
  has_many :steps
  accepts_nested_attributes_for :steps, allow_destroy: true
end
