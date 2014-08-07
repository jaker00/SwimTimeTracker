class Attendance < ActiveRecord::Base
  belongs_to :meet
  belongs_to :swimmer
  has_many :swim_times
end
