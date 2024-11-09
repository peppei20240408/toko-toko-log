class Pin < ApplicationRecord
  belongs_to :toko_log
  has_many_attached :images
end
