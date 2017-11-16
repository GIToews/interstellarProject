class Destination < ApplicationRecord
  belongs_to :star
  belongs_to :planet
  has_many :flights
end
