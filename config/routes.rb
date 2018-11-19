Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  devise_scope :user do
    authenticated :user do
          root 'seats#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end


  resources :seats
  resources :relationships
  resources :readers
  resources :learning_times
  resources :learners
  resources :users
  resources :all_seats
end
