class TokoLog < ApplicationRecord
  belongs_to :user
  has_many :pins
end
