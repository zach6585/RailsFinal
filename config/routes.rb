Rails.application.routes.draw do
  get 'test/index'
  get 'test/new'
  get 'calendar/index'
  get 'calendar/new'
  root 'home#index'
  post 'customers/search'
  get 'customers/index'
  get 'customers/results'

  
  resources :calendar
  
  scope '/admin' do 
    resources :customers, only: [:destroy]
    resources :contacts, only: [:destroy, :new, :create, :edit, :update, :index]
    resources :wbw_workers, only: [:edit, :update, :destroy, :index, :new, :create]
    resources :wbw_workers, only: [:show] do 
      resources :customers, only: [:new, :create]
      
      
    end 
  end 
  resources :wbw_workers, only: [:show] do 
    resources :customers, only: [:show, :update, :new, :create]
  end 


  # Add route for OmniAuth callback
  match '/auth/:provider/callback', to: 'auth#callback', via: [:get, :post]
  get 'auth/signout'
 
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
