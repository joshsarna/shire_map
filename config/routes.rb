Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/locations' => 'locations#index'
    post '/locations' => 'locations#create'
    get '/locations/:id' => 'locations#show'
    patch '/locations/:id' => 'locations#update'

    post '/routes' => 'routes#create'
    get '/routes/last' => 'routes#show'

    # get maps of various levels
    get '/maps/:level' => 'maps#index'
  end
end
