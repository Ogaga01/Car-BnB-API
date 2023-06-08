class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
end
