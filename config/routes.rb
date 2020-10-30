Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # verb 'path', to: 'controller#action'
  # get '/users', to: 'users#index', as: 'users'
  # get '/users/:id', to: 'users#show', as: 'user'
  # post '/users', to: 'users#create', as: 'create_user'
  # patch '/users/:id', to: 'users#update', as: 'update_user'
  # delete '/users/:id', to: 'users#destroy', as: 'destroy_user'

  
  resources :users, except: [:new, :edit] do
    resources :artworks, only: :index
  end
  resources :artworks, except: [:new, :edit, :index]
  resources :artwork_shares, only: [:create, :destroy]
  resources :comments, only: [:index, :create, :destroy]
end
