class Order < ApplicationRecord

  has_many :flight_passengers
  has_many :flights, through: :flight_passengers
  has_many :users, through: :flight_passengers
end
