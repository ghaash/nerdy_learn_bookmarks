Rails.application.routes.draw do
  resources :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :favorites
  resources :bookmarks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post '/favorites', to: 'bookmarks#favorites'
  post '/add_to_favorites' => 'bookmarks#add_to_favorites'
end
