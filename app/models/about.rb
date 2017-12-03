class About < ApplicationRecord
  validates :key, :content, :type, presence: true
end
