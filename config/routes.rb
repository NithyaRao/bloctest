Rails.application.routes.draw do
  
  devise_for :users
  resources :posts
  resources :advertisements, only: [:show, :index]
  get 'about' => 'welcome#about'
  root to: 'welcome#index'
end
