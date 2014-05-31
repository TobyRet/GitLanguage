Rails.application.routes.draw do

  root 'searches#new'

  #get '/search', to: 'searches#new'
#
  #post '/search', to: 'searches#create'

  resources :searches, only: [:show, :new, :create]

end
