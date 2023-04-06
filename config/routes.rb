Rails.application.routes.draw do

  root "welcome#index"
  resources :merchants, only: [:index, :show]
  resources :items, only: [:show]
  resources :find_merchants, only: [:index]

end
