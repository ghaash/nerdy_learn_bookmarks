Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "bookmarks#index"
  resources :favorites
  resources :bookmarks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post '/favorites', to: 'bookmarks#favorites'
  post '/add_to_favorites' => 'bookmarks#add_to_favorites'
end
