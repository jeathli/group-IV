Rails.application.routes.draw do

  get 'home/index'

  root 'home#index'

  get 'recipes/show'

  get 'recipes' => "recipes#index"

  get '/' => 'application#index'

end
