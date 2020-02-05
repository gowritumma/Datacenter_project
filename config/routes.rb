Rails.application.routes.draw do
  
  root to: 'languages#index'
  resources :datacenters
  
  resources :countries
	
  resources :languages
  
   # API routes
  namespace :api do
    namespace :v1 do
      # resources :sessions, :only => [:create, :destroy]
		get 'datacenters', to: "datacenters#index"
		get 'datacenter(/:id)', to: "datacenters#show"
 	end
  end
end
