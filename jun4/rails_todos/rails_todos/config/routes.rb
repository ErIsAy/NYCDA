Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :todos do
    resources :todo_comments, only: [:new, :create]
  
    collection do
      get '/search', to: 'todos#search'
      get '/visible', to: 'todos#visible'
      get '/blahblah1', to: 'todos#blahblah1'
      get '/blahblah2', to: 'todos#blahblah2'
      post 'mark_as_read', to: 'todos#mark_as_read'
    end

    member do
      get '/mark_complete', to: 'todos#mark_complete'
      get '/hide', to: 'todos#hide'
      get '/share', to: 'todos#share'
    end

  end

  # resources :todo_comments

end
