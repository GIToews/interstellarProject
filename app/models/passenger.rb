class Passenger < ApplicationRecord

  validates :user_name, :name, :password, presence: true
  validates :user_name, uniqueness: true

  has_many :flight_passengers
  has_many :flights, through: :flight_passengers
end
