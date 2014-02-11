RecurlyRails::Application.routes.draw do
  #resources :subsctiptions
  get "subscriptions/new"
  get "subscriptions/create"
  get "subscriptions/update"

  #user registration
  resources :subscriptions , :users
  match '/signup',  to: 'users#new', :via => [:get]
  match '/signup',  to: 'users#create', :via => [:post]
  
  #static pages
  root :to => "static_pages#home"
  match 'pricing' => "static_pages#pricing"
  get "static_pages/home"
  get "static_pages/innovator_monthly"
get "static_pages/innovator_yearly"

ActionController::Routing::Routes.draw do |map|
  
  map.connect '', :controller => :recurly
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
