Rails.application.routes.draw do

  get "/actors" => "actors#show" # query
  get "/actors/:id" => "actors#show" # segment
  post "/actors" => "actors#show" # body

  get "/movies" => "movies#index"
  get "/movie/:id" => "movies#show"
end
