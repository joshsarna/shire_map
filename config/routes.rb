Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/locations' => 'locations#index'
    post '/locations' => 'locations#create'
    post '/locations/lodging' => 'locations#lodging'
    get '/locations/:id' => 'locations#show'
    patch '/locations/:id' => 'locations#update'

    get '/synonyms' => 'synonyms#index'
    get '/route_segments' => 'route_segments#index'

    post '/routes' => 'routes#create'
    get '/routes/:start_id/:end_id' => 'routes#show'

    # get maps of various levels
    get '/maps/:level' => 'maps#index'
  end
end
