Rails.application.routes.draw do
 devise_for :users, :controllers => { registrations: 'registrations' }
  root 'static_pages#new'

  resources :users
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
