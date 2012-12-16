Katalog::Application.routes.draw do

#   match '/users/login' => 'users#login', :only => :post
#   match '/users/logout' => 'users#logout', :only => :delete

#   match '/hosts/:id/feeds' => 'feeds#host', :only => :delete

  resources :feeds
  resources :hosts
  resources :users
  resources :monitors


  root :to => "root#about"
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
#== Route Map
# Generated on 16 Dec 2012 09:48
#
#           POST   /feeds(.:format)          feeds#create
#  new_feed GET    /feeds/new(.:format)      feeds#new
# edit_feed GET    /feeds/:id/edit(.:format) feeds#edit
#      feed GET    /feeds/:id(.:format)      feeds#show
#           PUT    /feeds/:id(.:format)      feeds#update
#           DELETE /feeds/:id(.:format)      feeds#destroy
#     hosts GET    /hosts(.:format)          hosts#index
#           POST   /hosts(.:format)          hosts#create
#  new_host GET    /hosts/new(.:format)      hosts#new
# edit_host GET    /hosts/:id/edit(.:format) hosts#edit
#      host GET    /hosts/:id(.:format)      hosts#show
#           PUT    /hosts/:id(.:format)      hosts#update
#           DELETE /hosts/:id(.:format)      hosts#destroy
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#      root        /                         root#about
