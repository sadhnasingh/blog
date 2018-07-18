Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :bloggers do
  	resources :comments 
  end
  resources :comments do
        resources :replies
  end
  root 'welcome#index'
end
