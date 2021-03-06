class ActorsController < ApplicationController

  before_action :authenticate_admin, except: %i[index show]
  
  def index
    @actors = Actor.all
    render template: "actors/index"
  end

  def show
    @actor = Actor.find(params[:id])
    render template: "actors/show"
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id]
    )
    if actor.save
      render json: actor.as_json
    else
      render json: actor.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name]
    actor.last_name = params[:last_name]
    actor.known_for = params[:known_for]
    actor.gender = params[:gender]
    actor.age = params[:age]
    actor.movie_id = params[:movie_id]
    if actor.save
      render json: {message: "ID: #{actor.id} has been updated!"}
    else
      render json: actor.errors.full_messages, status: :bad_request
    end
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "ID: #{actor.id} DELETED!"}
  end

end
