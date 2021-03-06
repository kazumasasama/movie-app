class Movie < ApplicationRecord

  has_many :actors #returns array of many actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :title, presence: true
  validates :year, numericality: { only_integer: true, greater_than: 1800}
  validates :plot, length: { maximum: 6000 }
  validates :english, presence: true
  
  def genre_names
    genre_names = []
    movie_genres.each do |genre|
      genre_names << Genre.find(genre.genre_id).name
    end
    genre_names
  end
end
