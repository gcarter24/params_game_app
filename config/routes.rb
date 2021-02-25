Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # query param
    get "/name" => "game#name"
    get "/number" => "game#guess_number"
    #segment param
    get "/name/:name" => "game#name"
    get "/number/:number" => "game#guess_number"
    #body param
    post "/body_number" => "game#guess_number"
    post "/body_name" => "game#name"
    post "/secret" => "game#secret"
  end
end
