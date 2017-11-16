class Flight < ApplicationRecord


  validates :departure_time, :arrival_time, :seats, presence: true
  validates :seats, numericality: true

  has_many :flight_passengers
  has_many :passengers, through: :flight_passengers
  belongs_to :destination
  belongs_to :rocket
end
