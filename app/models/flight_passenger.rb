class FlightPassenger < ApplicationRecord

  validates :quantity, presence: true
  belongs_to :flight
  belongs_to :user
  belongs_to :order
end
