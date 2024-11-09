class TokoLog < ApplicationRecord
  belongs_to :user
  has_many :pins

  validates :title,       presence: true
  validates :description, presence: true

end
