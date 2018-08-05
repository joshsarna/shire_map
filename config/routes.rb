Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/locations' => 'locations#index'
    get '/locations/:id' => 'locations#show'

    post '/routes' => 'routes#create'
  end
end
