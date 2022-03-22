class Actor < ApplicationRecord

  belongs_to :movie #returns hash of one single movie
  
  validates :first_name, presence: true, length: {minimum: 2}
  validates :last_name, presence: true, length: {minimum: 2}
  validates :known_for, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 13 }

  def plot
    movie["plot"]
  end

end
