class Pin < ApplicationRecord
  belongs_to :toko_log
  has_many_attached :images

  validates :order_of_pins, presence: true
  validates :latitude,      presence: true
  validates :longitude,     presence: true

  validates :images,        presence: true
end
