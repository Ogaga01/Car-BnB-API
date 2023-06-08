class Car < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :reservations, dependent: :destroy

  validates :user, presence: true
  validates :model, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :image, presence: true, uniqueness: true
end
