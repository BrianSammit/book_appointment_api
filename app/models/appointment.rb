class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :skateboard

  validates_presence_of :start_date
  validates_presence_of :end_date
  validates_presence_of :city
  validates_presence_of :user_id
  validates_presence_of :skateboard_id
end
