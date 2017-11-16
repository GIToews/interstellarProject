class Moon < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {minimum: 3}

  belongs_to :planet
end
