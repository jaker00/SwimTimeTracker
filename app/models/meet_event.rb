class MeetEvent < ActiveRecord::Base
  belongs_to :meet
  has_many :swim_times
  
  LENGTHS = ['50','100','200','400']
  STROKES = ['Fly','Back','Breast','Free']
  LENGTHTYPES = ['SCY','LCM','SCM']
  
  validates_presence_of :meet_id,
  :message => "must not be empty"
  
  validates_inclusion_of :length,
  :in => LENGTHS,
  :message => "%{value} is not allowed"
  
  validates_inclusion_of :stroke,
  :in => STROKES,
  :message => "%{value} is not allowed"
  
  validates_inclusion_of :lengthtype,
  :in => LENGTHTYPES
  :message => "%{value} is not allowed"
end
