Rails.application.routes.draw do

  get 'ingredients/index'

  root 'ingredients#index'

  get 'recipes/show'

  get 'recipes' => "recipes#index"

  get '/' => 'application#index'

end
