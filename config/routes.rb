Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  devise_scope :user do
    authenticated :user do
          root 'all_seats#new', as: :authenticated_root
    end
    unauthenticated do
      root 'seats#top', as: :unauthenticated_root
    end
  end


  resources :seats do
    collection do
      get :top
    end
  end

  resources :relationships
  resources :readers
  resources :learning_times
  resources :learners
  resources :users
  resources :all_seats
end
