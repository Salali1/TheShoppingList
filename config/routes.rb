Rails.application.routes.draw do
  devise_for :users
  resources :my_shopping_lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "my_shopping_lists#index"
  devise_scope  :user do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
