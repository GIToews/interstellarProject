class Flight < ApplicationRecord


  validates :departure_time, :arrival_time, :seats, :sale, :price, presence: true
  validates :seats, :price, :sale, numericality: true

  has_many :flight_passengers
  has_many :passengers, through: :flight_passengers
  belongs_to :destination
  belongs_to :rocket
end
