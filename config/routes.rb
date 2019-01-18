Rails.application.routes.draw do
  resources :drawings
  resources :tags, only: [:index, :show]
    
  get 'about', to: 'welcome#about'
  
  get 'login', to: 'welcome#login'
  get 'logout', to: 'welcome#logout'
  post 'authenticate', to: 'welcome#authenticate'
  
  root 'welcome#index'
end
