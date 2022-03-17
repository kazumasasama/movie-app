class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, numericality: { only_integer: true, greater_than: 1800}
  validates :plot, length: { maximum: 6000 }
  validates :english, presence: true
end
