Rails.application.routes.draw do

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/students" => "students#index"
  end
end
