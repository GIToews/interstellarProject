class Flight < ApplicationRecord
  has_many :flight_passengers
  has_many :passengers, through: :flight_passengers
  belongs_to :destination
  belongs_to :rocket
end
