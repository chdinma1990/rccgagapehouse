Rails.application.routes.draw do
  root   'home#index'

  get 'about' => 'about#us'
  get 'staff' => 'staff#staff'
  get 'contact' => 'contact#contact'
  get 'media'  => 'media#Services'
  get 'index' => 'home#index'
  get 'ministries' => 'staff'


 
   get 'donate' => 'donate#new'
   get '/redirect', to: 'events#redirect', as: 'redirect'
  get '/callback', to: 'events#callback', as: 'callback'
  get '/calendars', to: 'events#calendars', as: 'calendars'
  get '/events/:calendar_id', to: 'events#calendar_items', as: 'calendar_items', calendar_id: /[^\/]+/

  # devise_for :admin_users, ActiveAdmin::Devise.config

  # ActiveAdmin.routes(self)

  resources :events, :only => [:index]

  # resource :gives

  resources :contact, :only => [:index] do
    collection do
      get :thank_you
    end
  end
  
  

 
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
