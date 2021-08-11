class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :content, presence: true

  validates :rating, numericality: true
  validates :rating, :inclusion => 0..5
end
