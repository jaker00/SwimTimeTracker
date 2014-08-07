class Swimmer < ActiveRecord::Base
  has_many :attendances
  has_secure_password
end
