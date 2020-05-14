Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions',
  }

  root 'categories#index', as: 'home'

  resources :categories
  resources :books
end
