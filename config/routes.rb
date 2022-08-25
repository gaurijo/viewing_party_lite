Rails.application.routes.draw do

  get '/', to: 'landing#index'
  get '/register', to: "users#new"
  post '/register', to: "users#create"
  get '/users/:id/movies/:movie_id/viewing_party/new', to: "viewing_parties#new" 
  get '/users/:id/discover', to: "users#discover"
  resources :users, only: [:new, :create, :show] do 
    resources :movies, only: [:index]
  end
end

# root 'landing#index'
