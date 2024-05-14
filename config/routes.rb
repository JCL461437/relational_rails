Rails.application.routes.draw do
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root 'welcome#index'
  get '/gyms', to: 'gyms#index'
  get '/gyms/:id', to: 'gyms#show'

  # get '/songs/:id', to: 'songs#show'
  # get '/songs/show_me/:foo', to: "songs#custom"
  # get '/artists/:artist_id/songs', to: 'artist_songs#index'
  # get '/artists', to: 'artists#index'
  # get '/artists/new', to: 'artists#new'
  # post '/artists', to: 'artists#create'
  # get '/artist/:id/edit', to: 'artists#edit'
  # patch '/artists/:id', to: 'artists#update'
end
