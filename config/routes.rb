Rails.application.routes.draw do

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/students" => "students#index"
    get "/students/:id" => "students#show"
    post "/students" => "students#create"
  end
end
