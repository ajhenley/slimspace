Rails.application.routes.draw do
  
  resources :spaces
  
  resources :spaces do
	  resources :bookings
	end

  devise_for :users
  

  
  
  
  get 'static_pages/about'
  
  get 'static_pages/contact'

  root 'static_page#about'

end
