Rails.application.routes.draw do
  get 'home/index'

  match "/auth/:provider/callback" => "sessions#create", :via => [:get, :post]
  

  root 'posts#index'

  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
