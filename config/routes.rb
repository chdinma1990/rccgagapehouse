Rails.application.routes.draw do
  

  get 'about' => 'about#us'
  get 'staff' => 'staff#staff'
  get 'contact' => 'contact#contact'


  #get 'home/index'
 
   get 'donate' => 'donate#new'

  root 'home#index'
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
