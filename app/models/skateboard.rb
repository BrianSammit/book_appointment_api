class Skateboard < ApplicationRecord
  has_many :appointments

  validates_presence_of :brand
  validates_presence_of :image
end
