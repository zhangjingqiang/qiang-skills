QiangSkills::Application.routes.draw do
  get "categories", to: "categories#index"
  get "categories/:id", to: "categories#show", as: "categories_show"
  get 'about', to:'about#index'
  get 'contact', to:'contact#new'
  post 'create', to: 'contact#create'
  
  devise_for :admins
  get "admin", to: "admin#index"
  get "admins", to: "admin#index"
  namespace :admin do
    resources :categories
    resources :skills
    resources :heros
    resources :abouts
    resources :contacts
  end
  
  root 'welcome#index'
end
