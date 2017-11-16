class Passenger < ApplicationRecord


  validates :user_name, :name, :password, presence: true
  validates :user_name, uniqueness: true
  # validates :seats, numericality: true
  # validates :from, :to, length: {minimum: 2}
  # validates :from, :to, length: {maximum: 12}




  has_many :flight_passengers
  has_many :flights, through: :flight_passengers
end
