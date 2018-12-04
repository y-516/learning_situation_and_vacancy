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


  resources :seats,only:[:index,:destroy] do
    collection do
      get :top
    end
  end

  resources :relationships,only:[:index,:show,:create,:destroy]
  resources :readers,only:[:index,:show]
  resources :learning_times,only:[:new,:index,:create]
  resources :learners,only:[:index,:show]
  resources :users,only:[:index,:show,:edit,:update]
  resources :all_seats,only:[:new,:create,:destroy,:edit,:update]
end
