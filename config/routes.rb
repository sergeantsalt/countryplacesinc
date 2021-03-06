Countryplacesinc::Application.routes.draw do

  match '/financing', to: 'static_pages#financing'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'

  resources :listings
  get '/listings/:id', to: 'listings#featured', as: 'featured'

  # authenticated :user do
  #   put '/users', to: 'devise/registrations#update'
  #   delete '/users', to: 'devise/registrations#destroy'
  # end

  devise_for :users, :controllers => { :registrations => "users/registrations"}
  resources :users

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
    post '/login', to: 'devise/sessions#create'
    delete '/sign_out', to: 'devise/sessions#destroy'

    match '/new_user', to: 'users/registrations#new'
    match '/account', to: 'users/registrations#edit'
  end

  # post '/users', to: 'static_pages#home'

  root :to => 'static_pages#home'
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
