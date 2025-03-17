Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"
end
