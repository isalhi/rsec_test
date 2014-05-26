SampleApp::Application.routes.draw do
  
  

  resources :comments

  resources :searches

  resources :cathegories

  resources :locations
  resources :user_acts
  resources :activities
  

  get "sessions/new"
    resources :users
    resources :sessions, :only => [:new, :create, :destroy]
    
    get 'signup' => 'users#new'
    get 'signin' => 'sessions#new'
    get 'search' => 'searches#new'
    delete 'signout' => 'sessions#destroy'
    get '/' => 'pages#home', as: 'home'
    get '/contact' => 'pages#contact'
    
    resources :activities do
        collection do
            get 'search' => 'activities#search', via: [:get, :post], as: :search
        end
    end
    

  resources :user_acts do
    member do
      post :create
    end
  end 

  resources :user_acts do
    member do
      delete :destroy
    end
  end

  #get "user_acts/:id/delete", to: "user_acts#destroy", as: :destroy_user_acts   
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
