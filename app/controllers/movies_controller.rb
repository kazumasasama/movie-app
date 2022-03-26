class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show update destroy]

  def index
    @movies = Movie.all
    render template: "movies/index"
  end

  def show
    render template: "movies/show"
  end

  def create
    movie = Movie.new(movie_params)
    if movie.save
      render json: movie.as_json
    else
      render json: movie.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    if @movie.update(movie_params)
      render json: @movie.as_json
    else
      render json: @movie.errors.full_messages, status: :bad_request
    end
  end

  def destroy
    @movie.destroy
    render json: @movie.as_json
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :year, :plot, :director, :english)
  end

end

