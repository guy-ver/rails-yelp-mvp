Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants, only: %i[index show create new] do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: [:destroy]
end
