Rails.application.routes.draw do
  get 'rails/g'

  get 'rails/controller'

  get 'rails/account/groups'

  devise_for :users
  resources :groups do
    member do
      post :join
      post :quit
    end

    resources :posts
  end

  namespace :account do
    resources :groups
 end

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root "groups#index"
end
