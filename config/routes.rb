Rails.application.routes.draw do
  root to: 'apartments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "apartments", to: "apartments#index"
  # get '/search_results', to: 'apartments#search_results'
  resources :searches, only: [:new, :create, :show]
end
