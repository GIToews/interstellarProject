class Passenger < ApplicationRecord

  validates  :name, :city, :cntry, presence: true

  has_many :flight_passengers
  has_many :flights, through: :flight_passengers
  belongs_to :province
end
