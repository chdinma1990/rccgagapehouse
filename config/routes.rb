Rails.application.routes.draw do
  root   'home#index'

  get 'about' => 'about#us'
  get 'staff' => 'staff#staff'
  get 'contact' => 'contact#contact'
  get 'media'  => 'media#Services'
  get 'index' => 'home#index'


 
   get 'donate' => 'donate#new'
  
  

 
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
