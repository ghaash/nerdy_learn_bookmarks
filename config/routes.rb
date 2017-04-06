Rails.application.routes.draw do
  resources :tags
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: "bookmarks#index"

  # resources :bookmarks, only: [:index, :show, :new, :create, :edit]
  # resources :favorites

  resources :bookmarks, only: [:show, :index, :new, :create, :edit] do
  resources :favorites, only: [:show, :index, :new]
end
  resources :favorites

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
