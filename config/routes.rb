Rails.application.routes.draw do

  get 'welcome/index'

  resources :beers
  resources :ingredients
  resources :foods

  get 'search', to: 'search#index', as: 'search'

  root to: 'foods#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
