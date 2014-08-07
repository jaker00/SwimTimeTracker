class MeetEvent < ActiveRecord::Base
  belongs_to :meet
  has_many :swim_times
end
