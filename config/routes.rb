Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: "bookmarks#index"

  resources :bookmarks, only: [:index, :show, :new, :create]
  resources :favorites

#   resources :bookmarks, only: [:show, :index] do
#   resources :favorites, only: [:show, :index, :new, :edit]
# end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
