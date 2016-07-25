Rails.application.routes.draw do

  get 'recipes/random' => 'recipes#random'

  resources :recipes, only: [:index, :show]
  resources :ingredients, only: [:index]

  root 'ingredients#index'
end
