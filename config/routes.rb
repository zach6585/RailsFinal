Rails.application.routes.draw do
  get 'calendar/index'
  get 'calendar/new'
  root 'home#index'
  
  get 'contacts/search'
  post 'contacts/results'

  
  resources :calendar

  resources :contacts
  resources :workers, only: [:destroy, :new, :create]
  



  # Add route for OmniAuth callback
  match '/auth/:provider/callback', to: 'auth#callback', via: [:get, :post]
  get 'auth/signout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end