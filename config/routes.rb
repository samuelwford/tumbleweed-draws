Rails.application.routes.draw do
  resources :drawings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'about', to: 'welcome#about'
  
  get 'login', to: 'welcome#login'
  get 'logout', to: 'welcome#logout'
  post 'authenticate', to: 'welcome#authenticate'
  
  root 'welcome#index'
end
