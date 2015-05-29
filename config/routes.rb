Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  get '/cool'   => 'gif#cool'
  get '/sweet'  => 'gif#sweet'

  get '/signup'   => 'users#new'
  post '/users' 	=> 'users#create'

  get '/login'  => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
