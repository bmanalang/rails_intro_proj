Rails.application.routes.draw do

  get 'about/index'

  get 'welcome/index'

  resources :beers
  resources :ingredients
  resources :foods

  get 'search', to: 'search#index', as: 'search'

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
