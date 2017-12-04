Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :auctions, only: [:index, :show, :create]
      resources :bids, only: [:index, :show, :create]
      post '/login', to: 'sessions#create'
    end
  end
end
