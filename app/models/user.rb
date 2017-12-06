class User < ApplicationRecord
  has_secure_password

  has_many :flight_passengers
  has_many :flights, through: :flight_passengers
  belongs_to :province
end
