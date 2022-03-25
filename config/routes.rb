Rails.application.routes.draw do

  post "/sessions" => "sessions#create"

  post "/users" => "users#create"
  
  # resources :movies, :actors

  # same as avove  except creating a route for "put"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  post "/movies" => "movies#create"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
  post "/actors" => "actors#create"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"


  # get "/actors" => "actors#show" # query
  # get "/actors/:id" => "actors#show" # segment
  # post "/actors" => "actors#show" # body

end
