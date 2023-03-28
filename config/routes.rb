Rails.application.routes.draw do
  resources :books
  resources :destnations
  resources :usrs
  resources :pays
  # resources :users, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get"/", to: "destinations#index"
  get "pays", to: "pay#index"
  get "pays/:id", to: "pay#show"
  post '/pays', to: 'pays#create'

  get "pesapal/callback", to: "pays#pesapal_callback"

end
