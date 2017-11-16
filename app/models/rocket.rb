class Rocket < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {minimum: 3}

  has_many :flights
end
