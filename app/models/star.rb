class Star < ApplicationRecord

  valid_stars = ['Average Star', 'Red Giant', 'White Dwarf', 'Brown Dwarf', 'Massive Star', 'Red Super Giant', 'Neutron Star', 'Black Hole']

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {minimum: 3}
  validates :life_cycle_stage, inclusion: { in: valid_stars, message: "%{value} is not a valid star life cycle stage" }

  has_many :destinations
end
