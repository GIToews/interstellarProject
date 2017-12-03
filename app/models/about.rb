class About < ApplicationRecord
  validates :key, :content, presence: true
end
