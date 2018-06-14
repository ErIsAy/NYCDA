Rails.application.routes.draw do

  root 'home#index'

  resources :cakes
  resources :muffins

end
