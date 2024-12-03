class TokoLog < ApplicationRecord
  belongs_to :user
  has_many :pins

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  validates :title,       presence: true
  validates :description, presence: true

  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
end
