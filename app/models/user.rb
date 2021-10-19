class User < ApplicationRecord
  has_many :appointments
  has_secure_password

  validates_presence_of :email
  validates_presence_of :username
  validates_presence_of :password
  validates_uniqueness_of :email
end
