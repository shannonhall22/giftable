Rails.application.routes.draw do

  # Routes for the Date resource:
  # CREATE
  get '/dates/new',      :controller => 'dates', :action => 'new',    :as => 'new_date'
  post '/dates',         :controller => 'dates', :action => 'create', :as => 'dates'

  # READ
  get '/dates',          :controller => 'dates', :action => 'index'
  get '/dates/:id',      :controller => 'dates', :action => 'show',   :as => 'date'

  # UPDATE
  get '/dates/:id/edit', :controller => 'dates', :action => 'edit',   :as => 'edit_date'
  patch '/dates/:id',    :controller => 'dates', :action => 'update'

  # DELETE
  delete '/dates/:id',   :controller => 'dates', :action => 'destroy'
  #------------------------------

  # Routes for the Wishlist resource:
  # CREATE
  get '/wishlists/new',      :controller => 'wishlists', :action => 'new',    :as => 'new_wishlist'
  post '/wishlists',         :controller => 'wishlists', :action => 'create', :as => 'wishlists'

  # READ
  get '/wishlists',          :controller => 'wishlists', :action => 'index'
  get '/wishlists/:id',      :controller => 'wishlists', :action => 'show',   :as => 'wishlist'

  # UPDATE
  get '/wishlists/:id/edit', :controller => 'wishlists', :action => 'edit',   :as => 'edit_wishlist'
  patch '/wishlists/:id',    :controller => 'wishlists', :action => 'update'

  # DELETE
  delete '/wishlists/:id',   :controller => 'wishlists', :action => 'destroy'
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get '/events/new',      :controller => 'events', :action => 'new',    :as => 'new_event'
  post '/events',         :controller => 'events', :action => 'create', :as => 'events'

  # READ
  get '/events',          :controller => 'events', :action => 'index'
  get '/events/:id',      :controller => 'events', :action => 'show',   :as => 'event'

  # UPDATE
  get '/events/:id/edit', :controller => 'events', :action => 'edit',   :as => 'edit_event'
  patch '/events/:id',    :controller => 'events', :action => 'update'

  # DELETE
  delete '/events/:id',   :controller => 'events', :action => 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new',      :controller => 'users', :action => 'new',    :as => 'new_user'
  post '/users',         :controller => 'users', :action => 'create', :as => 'users'

  # READ
  get '/users',          :controller => 'users', :action => 'index'
  get '/users/:id',      :controller => 'users', :action => 'show',   :as => 'user'

  # UPDATE
  get '/users/:id/edit', :controller => 'users', :action => 'edit',   :as => 'edit_user'
  patch '/users/:id',    :controller => 'users', :action => 'update'

  # DELETE
  delete '/users/:id',   :controller => 'users', :action => 'destroy'
  #------------------------------

  #CREATE
    get("/homepage", {:controller => "forms", :action => "homepage"})
    get("/personal_information_form", {:controller => "forms", :action => "personal_information_form"})

  #READ
    get("/profile_view", {:controller => "forms", :action => "profile_view"})

  #UPDATE
    get("/profile_edit_form", {:controller => "forms", :action => "profile_edit_form"})
    get("/profile_edit_process", {:controller => "forms", :action => "profile_edit_process"})


  #DESTROY







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
