class FlightPassenger < ApplicationRecord

  validates :quantity, presence: true
  belongs_to :flight
  belongs_to :passenger
end
