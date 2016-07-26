Rails.application.routes.draw do

  get 'recipes/random' => 'recipes#random'

  resources :recipes, only: [:index, :show]
  resources :ingredients, only: [:index]

  namespace :admin do
    resources :recipes
    resources :ingredients, except: [:show]
  end

  root 'ingredients#index'
end
