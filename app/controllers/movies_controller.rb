class MoviesController < ApplicationController

  def index
    movies = Movie.all
    render json: movies
  end

  def show
    id = params['id'].to_i
    movie = Movie.where(id: "#{id}")
    # movie = Movie.find(id)
    render json: movie
  end

end

