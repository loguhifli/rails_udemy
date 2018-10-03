Rails.application.routes.draw do
  get '/', to: 'welcome#home'
  get 'home', to: 'welcome#home'
  get 'about', to: 'welcome#about'
  resources:articlesz
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root :to =>'home#index'
end
