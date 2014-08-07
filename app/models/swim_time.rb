class SwimTime < ActiveRecord::Base
  belongs_to :meet_event
  belongs_to :attendance
end
