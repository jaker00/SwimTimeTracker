class Meet < ActiveRecord::Base
  has_many :attendances
  has_many :meet_events
end
