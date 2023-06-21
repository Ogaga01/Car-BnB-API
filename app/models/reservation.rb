class Reservation < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :car, foreign_key: 'car_id'

  validates :date, presence: true
  validates :city, presence: true
end
