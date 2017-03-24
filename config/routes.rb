Rails.application.routes.draw do
  resources :favorites
  resources :bookmarks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post '/favorites', to: 'bookmarks#favorites'
  post 'add_to_favorites' => 'favorites#add_to_favorites'
end
