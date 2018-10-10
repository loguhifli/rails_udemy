Rails.application.routes.draw do
  resources :users
  get '/', to: 'welcome#home'
  get 'home', to: 'welcome#home'
  get 'about', to: 'welcome#about'
  resources:articles
  get 'home/index', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root :to =>'home#index'
end
