class Course < ActiveRecord::Base
  has_many :steps
  attr_accessible :title
end
