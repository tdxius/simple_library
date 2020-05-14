Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions',
  }

  root 'books#index', as: 'home'

  resources :categories
  resources :books
end
