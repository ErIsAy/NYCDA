Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to:'welcome#index'
  get 'welcome/index'

  resources :cohorts
  resources :courses
  resources :instructors
  resources :instructors_cohorts
  resources :students
  resources :students_cohorts
end
