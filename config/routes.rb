Rails.application.routes.draw do
  resources :recipes, only: [:index, :show]

  get 'ingredients/index'

  root 'ingredients#index'

  get '/' => 'application#index'
end
