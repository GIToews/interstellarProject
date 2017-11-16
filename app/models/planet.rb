class Planet < ApplicationRecord

  validates :name, :day_in_hours, presence: true
  validates :name, uniqueness: true
  validates :day_in_hours, numericality: true
  validates :from, :to, length: {minimum: 3}

  has_many :moons
  has_many :destinations
end
