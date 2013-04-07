class Course < ActiveRecord::Base
  has_many :steps
  accepts_nested_attributes_for :steps

  attr_accessible :steps_attributes, :title
end
