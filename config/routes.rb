Rails.application.routes.draw do
  get 'compare/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :players
  resources :seasons
  resources :awards
  resources :teams
end
