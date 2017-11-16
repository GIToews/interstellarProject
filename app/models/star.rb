class Star < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {minimum: 3}

  has_many :destinations
end
