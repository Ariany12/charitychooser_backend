Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/charities" => "charities#index"
    get "/charities/:id" => "charities#show"
    get "/chosen" => "chosenones#index"
    post "/chosen" => "chosenones#create"


    post "/users" => "users#create"
    post "/sessions" => "sessions#create"


  end
end
